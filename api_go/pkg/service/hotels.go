package service

import (
	"hotel_booking/models"
	"hotel_booking/pkg/repository"
)

type HotelsService struct {
	repo repository.Hotels
}

func NewHotelsService(repo repository.Hotels) *HotelsService {
	return &HotelsService{repo: repo}
}

func (h *HotelsService) GetHotelsByCategory(category string) ([]models.HotelsInCategoryOutput, error) {
	return h.repo.GetHotelsByCategory(category)
}

func (h *HotelsService) GetHotelsById(hotelId int) (models.HotelByIdOutput, error) {
	return h.repo.GetHotelsById(hotelId)
}
