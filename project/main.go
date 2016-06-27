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

var templates map[string]*template.Template

func main() {
	r := mux.NewRouter().StrictSlash(false)
	fs := http.FileServer(http.Dir("public"))
	r.Handle("/public", fs)
	r.HandleFunc("/login", getLogin).Methods("GET")
	r.HandleFunc("/login", doLogin).Methods("POST")

	initTemplates()

	server := &http.Server{
		Addr:    ":1373",
		Handler: r,
	}
	log.Println("Listening...")
	server.ListenAndServe()
}

func initTemplates() {
	if templates == nil {
		templates = make(map[string]*template.Template)
	}

	templates["login"] = template.Must(template.ParseFiles("templates/login.tmpl", "templates/base.tmpl"))
}

func doLogin(w http.ResponseWriter, r *http.Request) {
	r.ParseForm()
	u := r.FormValue("username")
	p := r.FormValue("password")
	log.Printf("login with %s : %s\n", u, p)
}

func getLogin(w http.ResponseWriter, r *http.Request) {
	tmpl := templates["login"]
	tmpl.ExecuteTemplate(w, "base", nil)
	log.Printf("login form\n")
}
