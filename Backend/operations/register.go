package operations

import (
	"net/http"
	"strconv"
	"sync"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"main.go/models"
)

func Register(db *mongo.Database) func(http.ResponseWriter, *http.Request) {
	nextId := 1
	var nextIdLock sync.Mutex
	return func(w http.ResponseWriter, r *http.Request) {
		r.ParseForm()

		age, err := strconv.Atoi(r.FormValue("age"))
		if err != nil {
			w.WriteHeader(http.StatusBadRequest)
			return
		}
		nextIdLock.Lock()
		myId := nextId + 1
		nextId += 1
		u := &models.Users{
			ID:       myId,
			Name:     r.FormValue("name"),
			Username: r.FormValue("username"),
			Password: r.FormValue("password"),
			Age:      age,
			Location: r.FormValue("location"),
		}

		c, err := db.Collection("users").Find(r.Context(), bson.M{})
		if err != nil {
			panic(err)

		}

		var usernames []bson.M

		if err = c.All(r.Context(), &usernames); err != nil {
			panic(err)
		}

		for _, username := range usernames {
			if username["username"] == u.Username {
				panic("already taken")
			}
		}

		defer c.Close(r.Context())

		_, err = db.Collection("users").InsertOne(r.Context(), u)
		if err != nil {
			w.WriteHeader(http.StatusInternalServerError)
			return
		}
	}
}
