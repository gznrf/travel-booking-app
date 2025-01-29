package service

import (
	"crypto/sha1"
	"errors"
	"fmt"
	"github.com/dgrijalva/jwt-go"
	"github.com/spf13/viper"
	"hotel_booking/models"
	"hotel_booking/pkg/repository"
	"time"
)

type tokenClaims struct {
	jwt.StandardClaims
	UserId int `json:"user_id"`
}

type AuthService struct {
	repo repository.Authorization
}

func NewAuthService(repo repository.Authorization) *AuthService {
	return &AuthService{repo: repo}
}

func (a *AuthService) CreateUser(input models.User) (int, error) {
	input.Password = generatePasswordHash(input.Password)
	return a.repo.CreateUser(input)
}

func (a *AuthService) GenerateToken(email, password string) (string, models.User, error) {
	user, err := a.repo.GetUser(email, generatePasswordHash(password))
	user.Password = ""
	if err != nil {
		return "", models.User{}, err
	}

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, &tokenClaims{
		StandardClaims: jwt.StandardClaims{
			ExpiresAt: time.Now().Add(time.Hour * 12).Unix(),
			IssuedAt:  time.Now().Unix(),
		},
		UserId: user.Id,
	})

	tokenKey := []byte(viper.GetString("token.key"))
	signedToken, err := token.SignedString(tokenKey)
	return signedToken, user, err
}

func (a *AuthService) ParseToken(accessToken string) (int, error) {
	token, err := jwt.ParseWithClaims(accessToken, &tokenClaims{}, func(token *jwt.Token) (interface{}, error) {
		if _, ok := token.Method.(*jwt.SigningMethodHMAC); !ok {
			return nil, errors.New("unexpected signing method")
		}

		return []byte(viper.GetString("token.key")), nil
	})
	if err != nil {
		return 0, err
	}

	tclaims, ok := token.Claims.(*tokenClaims)
	if !ok {
		return 0, errors.New("invalid token claims")
	}

	return tclaims.UserId, nil
}

func generatePasswordHash(password string) string {
	salt := viper.GetString("salt")
	hash := sha1.New()
	hash.Write([]byte(password))

	return fmt.Sprintf("%x", hash.Sum([]byte(salt)))
}
