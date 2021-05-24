package operations

import (
	"fmt"
	"net/http"

	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"main.go/models"
)

func Login(db *mongo.Database) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		r.ParseForm()

		ld := &models.Logindata{
			Username: r.FormValue("username"),
			Password: r.FormValue("password"),
		}

		c, err := db.Collection("users").Find(r.Context(), bson.M{})
		if err != nil {
			panic(err)

		}

		var userdata []bson.M

		if err = c.All(r.Context(), &userdata); err != nil {
			panic(err)
		}

		found := false

		for _, userlpd := range userdata {
			if userlpd["username"] != ld.Username || userlpd["password"] != ld.Password {
				found = false
				continue

			} else if userlpd["username"] == ld.Username && userlpd["password"] == ld.Password {
				fmt.Println("I m logged in")
				found = true
				break
			}

		}

		if !found {
			fmt.Println("plaese provide correct details")
		}
	}
}
