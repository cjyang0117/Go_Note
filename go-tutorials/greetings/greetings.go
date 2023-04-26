package main

import (
	"fmt"
	"log"

	"example.com/greetings_pkg"
)

func main() {
	log.SetPrefix("greetings_pkg: ")
	log.SetFlags(0)

	names := []string{"Gladys", "Kevin", "Tom"}

	messages, err := greetings_pkg.Hellos(names)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(messages)
}
