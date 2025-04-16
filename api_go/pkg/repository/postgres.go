package repository

import (
	"fmt"
	"log"
	"time"

	"github.com/jmoiron/sqlx"
)

const (
	usersTable        = "users"
	hotelsTable       = "hotels"
	photosTable       = "photos"
	hotelsPhotosTable = "hotels_photos"
)

type Config struct {
	Host     string
	Port     string
	Username string
	Password string
	DBName   string
	SSLMode  string
}

func NewPostgresDB(cfg Config) (*sqlx.DB, error) {
	db, err := sqlx.Open("postgres", fmt.Sprintf("host=%s port=%s user=%s dbname=%s password=%s sslmode=%s",
		cfg.Host, cfg.Port, cfg.Username, cfg.DBName, cfg.Password, cfg.SSLMode))
	if err != nil {
		return nil, err
	}

	for i := 0; i < 10; i++ {
		err = db.Ping()
		if err == nil {
			break
		}
		log.Printf("Waiting for DB to be ready (%d/10)...", i+1)
		time.Sleep(2 * time.Second)
	}

	if err != nil {
		return nil, fmt.Errorf("DB not reachable: %w", err)
	}

	return db, nil
}
