package repository

import (
	"github.com/jmoiron/sqlx"
	"hotel_booking/models"
)

type HotelsPostgres struct {
	db *sqlx.DB
}

func NewHotelsPostgres(db *sqlx.DB) *HotelsPostgres {
	return &HotelsPostgres{db: db}
}

func (r *HotelsPostgres) GetHotelsByCategory(category string) ([]models.HotelsInCategoryOutput, error) {
	var output []models.HotelsInCategoryOutput

	query := `
    SELECT hotels.name, hotels.category, hotels.stars_count, photos.main_photo_path 
    FROM hotels 
    LEFT JOIN hotels_photos ON hotels.id = hotels_photos.from_id
    LEFT JOIN photos ON hotels_photos.to_id = photos.id 
    WHERE hotels.category = $1;`

	rows, err := r.db.Query(query, category)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	for rows.Next() {
		var hotel models.HotelsInCategoryOutput
		if err := rows.Scan(&hotel.Name, &hotel.Category, &hotel.StarsCount, &hotel.MainImagePath); err != nil {
			return nil, err
		}
		output = append(output, hotel)
	}

	if err := rows.Err(); err != nil {
		return nil, err
	}

	return output, nil
}

func (r *HotelsPostgres) GetHotelsById(hotelId int) (models.HotelByIdOutput, error) {
	var output models.HotelByIdOutput
	var photos []string

	query := `SELECT * FROM hotels WHERE hotels.id = $1;`

	row := r.db.QueryRow(query, hotelId)
	if err := row.Scan(&output); err != nil {
		return models.HotelByIdOutput{}, err
	}

	query = `
    SELECT photos.photo_path
    FROM hotels 
    LEFT JOIN hotels_photos ON hotels.id = hotels_photos.from_id
    LEFT JOIN photos ON hotels_photos.to_id = photos.id 
    WHERE hotels.id = $1;`

	rows, err := r.db.Query(query, hotelId)
	if err != nil {
		return models.HotelByIdOutput{}, err
	}
	defer rows.Close()

	for rows.Next() {
		var photo string
		if err := rows.Scan(&photo); err != nil {
			return models.HotelByIdOutput{}, err
		}
		photos = append(photos, photo)
	}

	if err := rows.Err(); err != nil {
		return models.HotelByIdOutput{}, err
	}

	output.Photos = photos
	return output, nil
}
