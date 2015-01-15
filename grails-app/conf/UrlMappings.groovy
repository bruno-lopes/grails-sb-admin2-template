class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/testes/index")
        "/blank.html"(view:"/testes/blank")
        "/buttons.html"(view:"/testes/buttons")
        "/flot.html"(view:"/testes/flot")
        "/forms.html"(view:"/testes/forms")
        "/grid.html"(view:"/testes/grid")
        "/login.html"(view:"/testes/login")
        "/morris.html"(view:"/testes/morris")
        "/notifications.html"(view:"/testes/notifications")
        "/panels-wells.html"(view:"/testes/panels-wells")
        "/tables.html"(view:"/testes/tables")
        "/typography.html"(view:"/testes/typography")
        "/teste.html"(view:"/testes/teste")
        "500"(view:'/error')
	}
}
