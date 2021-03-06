package models

type Users struct {
	ID       int    `bson:"_id,omitempty" json:"id"`
	Name     string `bson:"name" json:"name"`
	Age      int    `bson:"age" json:"age"`
	Location string `bson:"location" json:"location"`
	Username string `bson:"username" json:"username"`
	Password string `bson:"password" json:"password"`
	Right    []int  `bson:"right"`
	Left     []int  `bson:"left"`
}

type Logindata struct {
	Username string
	Password string
}
