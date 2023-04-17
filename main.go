package main

import (
	"fmt"
	"html"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello,%q", html.EscapeString(r.URL.Path)) //path will be /  ,,URL will be localhost:8080
	})
	http.HandleFunc("/hi", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "hi")
	})
	log.Fatal(http.ListenAndServe(":8081", nil))
}
