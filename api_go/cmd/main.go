package main

import (
	"context"
	"github.com/joho/godotenv"
	_ "github.com/lib/pq"
	"github.com/spf13/viper"
	"hotel_booking/app"
	"hotel_booking/pkg/handler"
	"hotel_booking/pkg/repository"
	"hotel_booking/pkg/service"
	"log"
	"os"
	"os/signal"
	"syscall"
)

func main() {
	if err := initConfig(); err != nil {
		panic(err)
	}

	if err := godotenv.Load(); err != nil {
		panic(err)
	}

	db, err := repository.NewPostgresDB(repository.Config{
		Host:     viper.GetString("db.host"),
		Port:     viper.GetString("db.port"),
		Username: viper.GetString("db.username"),
		DBName:   viper.GetString("db.dbname"),
		SSLMode:  viper.GetString("db.sslmode"),
		Password: os.Getenv("DB_PASSWORD"),
	})
	if err != nil {
		panic(err)
	}

	repos := repository.NewRepository(db)
	services := service.NewService(repos)
	handlers := handler.NewHandler(services)

	server := new(app.Server)
	go func() {
		if err := server.Run(viper.GetString("port"), handlers.InitRoutes()); err != nil {
			log.Fatalf("Ошибка запуска сервера %s", err.Error())
		}
	}()

	log.Print("app started")

	quit := make(chan os.Signal, 1)
	signal.Notify(quit, syscall.SIGTERM, syscall.SIGINT)
	<-quit

	log.Print("app shutting down")

	if err := server.Shutdown(context.Background()); err != nil {
		log.Printf("error on server shuting down: %s", err.Error())
	}
	if err := db.Close(); err != nil {
		log.Printf("error on db connection closing: %s", err.Error())
	}
}

func initConfig() error {
	viper.AddConfigPath("config")
	viper.SetConfigName("config")
	return viper.ReadInConfig()
}
