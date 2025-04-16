package handler

import (
	"context"
	"errors"
	"fmt"
	"net/http"
)

const (
	authorizationHeader = "Authorization"
	userCtx             = "userId"
)

func (h *Handler) userIdentity(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		token, err := r.Cookie("authToken")

		userId, err := h.services.Authorization.ParseToken(token.Value)
		if err != nil {
			writeError(w, 401, fmt.Errorf("invalid auth headasder"))
			return
		}

		ctx := context.WithValue(r.Context(), userCtx, userId)
		next.ServeHTTP(w, r.WithContext(ctx))
	})
}

func getUserId(w http.ResponseWriter, r *http.Request) (int, error) {
	id := r.Context().Value(userCtx)
	if id == nil {
		writeError(w, 500, fmt.Errorf("user id not found"))
		return 0, errors.New("user id not found")
	}

	idInt, ok := id.(int)
	if !ok {
		writeError(w, 500, fmt.Errorf("user id not found"))
		return 0, errors.New("invalid user id")
	}

	return idInt, nil
}
