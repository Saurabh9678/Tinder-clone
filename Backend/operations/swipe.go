package operations

import (
	"fmt"
	"net/http"
	"strconv"

	"go.mongodb.org/mongo-driver/mongo"
)

func Swipe(db *mongo.Database) func(http.ResponseWriter, *http.Request) {
	return func(w http.ResponseWriter, r *http.Request) {
		r.ParseForm()
		myId, _ := strconv.Atoi(r.Form.Get("mine"))
		theirId, _ := strconv.Atoi(r.Form.Get("their"))
		
		fmt.Printf("%v , %v", myId, theirId)
	}
}
