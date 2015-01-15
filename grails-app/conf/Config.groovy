// configuration for plugin testing - will not be included in the plugin zip

log4j = {
    // Example of changing the log pattern for the default console
    // appender:
    //
    //appenders {
    //    console name:'stdout', layout:pattern(conversionPattern: '%c{2} %m%n')
    //}

    error 'org.codehaus.groovy.grails.web.servlet',  //  controllers
            'org.codehaus.groovy.grails.web.pages', //  GSP
            'org.codehaus.groovy.grails.web.sitemesh', //  layouts
            'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
            'org.codehaus.groovy.grails.web.mapping', // URL mapping
            'org.codehaus.groovy.grails.commons', // core / classloading
            'org.codehaus.groovy.grails.plugins', // plugins
            'org.codehaus.groovy.grails.orm.hibernate', // hibernate integration
            'org.springframework',
            'org.hibernate',
            'net.sf.ehcache.hibernate'
}

sbAdmin2.status = [
        messages: [
                show      : true,
                controller: 'messages',
                action    : 'showAllMessages'
        ],
        tasks   : [
                show      : true,
                controller: 'tasks',
                action    : 'showAllTasks'
        ],
        alerts  : [
                show      : true,
                controller: 'alerts',
                action    : 'showAllAlerts'
        ],
        profile : [
                show      : true,
                controller: 'profile',
                action    : 'show'
        ],
        settings: [
                show      : true,
                controller: 'settings',
                action    : 'edit'
        ],
        logout  : [
                controller: 'login',
                action    : 'logout'
        ],
        login   : [
                controller: 'login',
                action    : 'login'
        ]


]
sbAdmin2.menus = [
        [
                'id'        : 'dashboard',
                'title'     : 'Dashboard',
                'icon'      : 'fa-dashboard',
                'controller': 'teste',
                'action'    : 'teste1',
                'submenus'  : [
                        [
                                'id'        : 'dashboard1',
                                'title'     : 'Dashboard2',
                                'icon'      : 'fa-dashboard',
                                'controller': 'teste2',
                                'action'    : 'teste12',
                                'submenus'  : [
                                        [
                                                'id'        : 'dashboard1',
                                                'title'     : 'Dashboard2',
                                                'icon'      : 'fa-dashboard',
                                                'controller': 'teste2',
//                                                'action'    : 'teste12'
                                        ]
                                ]
                        ]
                ]

        ],
]