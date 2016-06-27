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
	"database/sql"
	"fmt"
	"html/template"
	"log"
	"net/http"

	"github.com/gorilla/mux"
	_ "gopkg.in/rana/ora.v3"
)

const host = "127.0.0.1"
const port = 8080
const sid = "orcl"

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
	or := fmt.Sprintf("%s/%s@%s:%d/%s", u, p, host, port, sid)
	sql.Open("ora", or)
}

func getLogin(w http.ResponseWriter, r *http.Request) {
	tmpl := templates["login"]
	tmpl.ExecuteTemplate(w, "base", nil)
	log.Printf("login form\n")
}
