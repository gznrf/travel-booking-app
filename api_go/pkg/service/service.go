package service

import (
	"hotel_booking/models"
	"hotel_booking/pkg/repository"
)

type Authorization interface {
	CreateUser(input models.User) (int, error)
	GenerateToken(email, password string) (string, models.User, error)
	ParseToken(accessToken string) (int, error)
}

type Hotels interface {
	GetHotelsByCategory(category string) ([]models.HotelsInCategoryOutput, error)
	GetHotelsById(hotelId int) (models.HotelByIdOutput, error)
}

type Service struct {
	Authorization
	Hotels
}

func NewService(repos *repository.Repository) *Service {
	return &Service{
		Authorization: NewAuthService(repos.Authorization),
		Hotels:        NewHotelsService(repos.Hotels),
	}
}
