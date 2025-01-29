package handler

import (
	"encoding/json"
	"hotel_booking/models"
	"hotel_booking/utils"
	"net/http"
)

func (h *Handler) signUp(w http.ResponseWriter, r *http.Request) {
	var input models.User

	if err := json.NewDecoder(r.Body).Decode(&input); err != nil {
		writeError(w, 400, err)
		return
	}

	if err := utils.Validate(&input); err != nil {
		writeError(w, 400, err)
		return
	}

	id, err := h.services.Authorization.CreateUser(input)
	if err != nil {
		writeError(w, 400, err)
		return
	}

	if err := writeJson(w, 200, map[string]interface{}{
		"id": id,
	}); err != nil {
		writeError(w, 500, err)
	}
}

func (h *Handler) signIn(w http.ResponseWriter, r *http.Request) {
	var input models.SignInInput
	var output models.User

	if err := json.NewDecoder(r.Body).Decode(&input); err != nil {
		writeError(w, 400, err)
		return
	}

	if err := utils.Validate(&input); err != nil {
		writeError(w, 400, err)
		return
	}

	token, output, err := h.services.Authorization.GenerateToken(input.Email, input.Password)
	if err != nil {
		writeError(w, 400, err)
		return
	}

	if err := writeJson(w, 200, map[string]interface{}{
		"JWT":          token,
		"user_name":    output.Name,
		"user_surname": output.Surname,
		"user_email":   output.Email,
	}); err != nil {
		writeError(w, 500, err)
	}
}
