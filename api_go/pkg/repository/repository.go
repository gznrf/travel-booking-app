package repository

import (
	"github.com/jmoiron/sqlx"
	"hotel_booking/models"
)

type Authorization interface {
	CreateUser(user models.User) (int, error)
	GetUser(email, password string) (models.User, error)
}

type Hotels interface {
	GetHotelsByCategory(category string) ([]models.HotelsInCategoryOutput, error)
	GetHotelsById(hotelId int) (models.HotelByIdOutput, error)
}

type Repository struct {
	Authorization
	Hotels
}

func NewRepository(db *sqlx.DB) *Repository {
	return &Repository{
		Authorization: NewAuthPostgres(db),
		Hotels:        NewHotelsPostgres(db),
	}
}
