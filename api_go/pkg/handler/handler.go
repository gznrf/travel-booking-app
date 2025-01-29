package handler

import (
	"encoding/json"
	"github.com/gorilla/mux"
	"hotel_booking/pkg/service"
	"net/http"
)

type Handler struct {
	services *service.Service
}

func NewHandler(services *service.Service) *Handler {
	return &Handler{services: services}
}

func (h *Handler) InitRoutes() *mux.Router {
	router := mux.NewRouter()

	auth := router.PathPrefix("/auth").Subrouter()
	{
		auth.HandleFunc("/sign-up", h.signUp).Methods("POST")
		auth.HandleFunc("/sign-in", h.signIn).Methods("POST")
	}

	api := router.PathPrefix("/api").Subrouter()
	{
		api.Use(h.userIdentity)

		lists := api.PathPrefix("/hotels").Subrouter()
		{
			lists.HandleFunc("/", h.getAllHotelsByCategory).Methods("GET")
			lists.HandleFunc("/{id}", h.getHotelById).Methods("GET")
		}
	}

	return router
}

func writeJson(w http.ResponseWriter, status int, v any) error {
	w.Header().Add("Content-Type", "application/json")
	w.WriteHeader(status)

	return json.NewEncoder(w).Encode(v)
}

func writeError(w http.ResponseWriter, status int, err error) {
	if err := writeJson(w, status, map[string]string{"error": err.Error()}); err != nil {
		writeError(w, http.StatusInternalServerError, err)
	}
}
