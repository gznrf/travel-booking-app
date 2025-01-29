package handler

import (
	"encoding/json"
	"github.com/gorilla/mux"
	"hotel_booking/models"
	"hotel_booking/utils"
	"net/http"
	"strconv"
)

func (h *Handler) getAllHotelsByCategory(w http.ResponseWriter, r *http.Request) {
	var input models.HotelsByCategoryInput

	if err := json.NewDecoder(r.Body).Decode(&input); err != nil {
		writeError(w, 400, err)
		return
	}

	if err := utils.Validate(&input); err != nil {
		writeError(w, 400, err)
		return
	}

	hotels, err := h.services.Hotels.GetHotelsByCategory(input.Category)
	if err != nil {
		writeError(w, 500, err)
		return
	}

	if err := writeJson(w, 200, map[string]interface{}{
		"hotels": hotels,
	}); err != nil {
		writeError(w, 500, err)
	}
}

func (h *Handler) getHotelById(w http.ResponseWriter, r *http.Request) {
	var hotelOutput models.HotelByIdOutput

	vars := mux.Vars(r)
	id, err := strconv.Atoi(vars["id"])

	if err != nil {
		writeError(w, 400, err)
		return
	}

	hotelOutput, err = h.services.Hotels.GetHotelsById(id)
	if err != nil {
		writeError(w, 500, err)
		return
	}

	if err := writeJson(w, 200, map[string]interface{}{
		"hotel": hotelOutput,
	}); err != nil {
		writeError(w, 500, err)
	}
}
