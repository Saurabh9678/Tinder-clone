package main

import (
	"context"
	"fmt"
	"net/http"

	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"main.go/operations"
)

func ping(w http.ResponseWriter, r *http.Request) {
	fmt.Println("I m connected, Go ahead n work")

}

func main() {
	db := mongodb()
	http.HandleFunc("/ping", ping)
	http.HandleFunc("/register", operations.Register(db))
	http.HandleFunc("/login", operations.Login(db))
	http.HandleFunc("/user", operations.ListUsers(db))
	http.HandleFunc("/swipe", operations.Swipe(db))
	http.ListenAndServe(":8000", nil)
}
func mongodb() *mongo.Database {
	ctx := context.Background()
	client, err := mongo.Connect(ctx, options.Client().ApplyURI("mongodb://localhost:27017"))
	if err != nil {
		panic(err)
	}

	return client.Database("tinder")
}
