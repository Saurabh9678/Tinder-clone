package operations

import (
	"encoding/json"
	"net/http"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"main.go/models"
)

func ListUsers(db *mongo.Database) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		var res []*models.Users

		cr, err := db.Collection("users").Find(r.Context(), bson.M{})
		if err != nil {
			panic(err)
		}
		defer cr.Close(r.Context())
		for cr.Next(r.Context()) {
			var user models.Users
			cr.Decode(&user)
			res = append(res, &user)
		}

		b, err := json.Marshal(res)
		if err != nil {
			panic(err)
		}
		w.Header().Set("Content-type", "application/json")
		w.Write(b)
	}
}
