package models

type Users struct {
	Name     string `bson:"name" json:"name"`
	Age      int    `bson:"age" json:"age"`
	Location string `bson:"location" json:"location"`
	Username string `bson:"username" json:"username"`
	Password string `bson:"password" json:"password"`
}

type Logindata struct {
	Username string
	Password string
}
