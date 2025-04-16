package handler

import (
	"github.com/gorilla/mux"
	"hotel_booking/models"
	"hotel_booking/utils"
	"net/http"
	"strconv"
)

func (h *Handler) getAllHotelsByCategory(w http.ResponseWriter, r *http.Request) {
	var input models.HotelsByCategoryInput

	input.Category = r.URL.Query().Get("hotel_category")

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
		"category": input.Category,
		"hotels":   hotels,
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
