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
	"html/template"
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

func main() {
	r := mux.NewRouter().StrictSlash(false)
	fs := http.FileServer(http.Dir("public"))
	r.Handle("/", fs)
	r.HandleFunc("/login", getLogin).Methods("GET")
	r.HandleFunc("/login", doLogin).Methods("POST")

	server := &http.Server{
		Addr:    ":1373",
		Handler: r,
	}
	log.Println("Listening...")
	server.ListenAndServe()
}

var templates map[string]*template.Template

func init() {
	if templates == nil {
		templates = make(map[string]*template.Template)
	}

	templates["login"] = template.Must(template.ParseFiles("templates/login.tmpl", "templates/base.tmpl"))

}

func doLogin(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	u := vars["username"]
	p := vars["password"]
	log.Printf("login with %s : %s\n", u, p)
}

func getLogin(w http.ResponseWriter, r *http.Request) {
}
