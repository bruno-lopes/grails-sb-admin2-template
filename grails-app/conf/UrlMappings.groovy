class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(view: "/testes/index")
        "/blank.html"(view: "/testes/blank")
        "/blank"(view: "/testes/blank")
        "/buttons.html"(view: "/testes/buttons")
        "/buttons"(view: "/testes/buttons")
        "/flot"(view: "/testes/flot")
        "/flot.html"(view: "/testes/flot")
        "/forms"(view: "/testes/forms")
        "/forms.html"(view: "/testes/forms")
        "/grid"(view: "/testes/grid")
        "/grid.html"(view: "/testes/grid")
        "/login"(view: "/testes/login")
        "/login.html"(view: "/testes/login")
        "/morris"(view: "/testes/morris")
        "/morris.html"(view: "/testes/morris")
        "/notifications"(view: "/testes/notifications")
        "/notifications.html"(view: "/testes/notifications")
        "/panels-wells"(view: "/testes/panels-wells")
        "/panels-wells.html"(view: "/testes/panels-wells")
        "/tables"(view: "/testes/tables")
        "/tables.html"(view: "/testes/tables")
        "/typography"(view: "/testes/typography")
        "/typography.html"(view: "/testes/typography")
        "/teste.html"(view: "/testes/teste")
        "500"(view: '/error')
    }
}
