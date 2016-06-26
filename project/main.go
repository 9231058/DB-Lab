/*
 * +===============================================
 * | Author:        Parham Alvani (parham.alvani@gmail.com)
 * |
 * | Creation Date: 27-06-2016
 * |
 * | File Name:     main.go
 * +===============================================
 */
package main

import (
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

func main() {
	r := mux.NewRouter().StrictSlash(false)
	fs := http.FileServer(http.Dir("public"))
	r.Handle("/", fs)
	r.HandleFunc("/login", GetLogin).Methods("GET")
	r.HandleFunc("/login", DoLogin).Methods("POST")

	server := &http.Server{
		Addr:    ":1373",
		Handler: r,
	}
	log.Println("Listening...")
	server.ListenAndServe()
}

func DoLogin(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	u := vars["username"]
	p := vars["password"]
	log.Printf("login with %s : %s\n", u, p)
}

func GetLogin(w http.ResponseWriter, r *http.Request) {
}
