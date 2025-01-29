package models

type User struct {
	Id       int    `json:"user_id" db:"id"`
	Name     string `json:"user_name" db:"name" validate:"required"`
	Surname  string `json:"user_surname" db:"surname" validate:"required"`
	Email    string `json:"user_email" db:"email" validate:"required,email"`
	Password string `json:"user_password" db:"password" validate:"required"`
}

type SignInInput struct {
	Email    string `json:"user_email" db:"email" validate:"required"`
	Password string `json:"user_password" db:"password" validate:"required"`
}
