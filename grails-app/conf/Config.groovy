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
                'id'      : 'dashboard',
                'title'   : 'Menu Aninhado',
                'icon'    : 'fa-dashboard',
                'submenus': [
                        [
                                'id'      : 'dashboard1',
                                'title'   : 'Exemplo de Menu Ainhado com 1 nível',
                                'icon'    : 'fa-dashboard',
                                'submenus': [
                                        [
                                                'id'        : 'dashboard1',
                                                'title'     : 'Exemplo de Menu Ainhado com 2 níveis',
                                                'icon'      : 'fa-dashboard',
                                                'controller': 'blank',
//                                                'action'    : 'teste12'
                                        ]
                                ]
                        ]
                ]

        ],
        [
                'id'        : 'buttons',
                'title'     : 'Buttons',
                'icon'      : 'fa-file-archive-o',
                'controller': 'buttons',
        ],
        [
                'id'        : 'flot',
                'title'     : 'Flot',
                'icon'      : 'fa-file-archive-o',
                'controller': 'flot',
        ]
        ,
        [
                'id'        : 'forms',
                'title'     : 'Forms',
                'icon'      : 'fa-file-archive-o',
                'controller': 'forms',
        ]
        ,
        [
                'id'        : 'grid',
                'title'     : 'Grid',
                'icon'      : 'fa-file-archive-o',
                'controller': 'grid',
        ]
        ,
        [
                'id'        : 'login',
                'title'     : 'Login',
                'icon'      : 'fa-file-archive-o',
                'controller': 'login',
        ]
        ,
        [
                'id'        : 'morris',
                'title'     : 'Morris',
                'icon'      : 'fa-file-archive-o',
                'controller': 'morris',
        ]
        ,
        [
                'id'        : 'notifications',
                'title'     : 'Notifications',
                'icon'      : 'fa-file-archive-o',
                'controller': 'notifications',
        ]
        ,
        [
                'id'        : 'panels-wells',
                'title'     : 'Panels Wells',
                'icon'      : 'fa-file-archive-o',
                'controller': 'panels-wells',
        ],
        [
                'id'        : 'tables',
                'title'     : 'Tables',
                'icon'      : 'fa-file-archive-o',
                'controller': 'tables',
        ],
        [
                'id'        : 'typography',
                'title'     : 'Typography',
                'icon'      : 'fa-file-archive-o',
                'controller': 'typography',
        ],

]