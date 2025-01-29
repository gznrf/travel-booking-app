package models

type Hotel struct {
	Id         int    `json:"hotel_id" db:"id" validate:"required"`
	Name       string `json:"hotel_name" db:"name" validate:"required"`
	Address    string `json:"hotel_address" db:"address" validate:"required"`
	StarsCount int    `json:"hotel_stars_count" db:"stars_count" validate:"required"`
	Rating     int    `json:"hotel_rating" db:"rating" validate:"required"`
}

type HotelsByCategoryInput struct {
	Category string `json:"hotel_category" db:"category" validate:"required"`
}

type HotelsInCategoryOutput struct {
	Name          string `json:"hotel_name" db:"name" validate:"required"`
	Category      string `json:"hotel_category" db:"category" validate:"required"`
	StarsCount    int    `json:"hotel_stars_count" db:"stars_count" validate:"required"`
	MainImagePath string `json:"main_photo_path" db:"main_photo_path" validate:"required"`
}

type HotelByIdOutput struct {
	Id         int      `json:"hotel_id" db:"id" validate:"required"`
	Name       string   `json:"hotel_name" db:"name" validate:"required"`
	Address    string   `json:"hotel_address" db:"address" validate:"required"`
	StarsCount int      `json:"hotel_stars_count" db:"stars_count" validate:"required"`
	Rating     int      `json:"hotel_rating" db:"rating" validate:"required"`
	Photos     []string `json:"hotel_photos" db:"photo_path" validate:"required"`
}
