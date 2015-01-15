<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">

            <li class="sidebar-search">
                <div class="input-group custom-search-form">
                    <input type="text" class="form-control"
                           placeholder="<g:message code="sbAdmin2.application.search-title"/>"/>
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button">
                            <i class="fa fa-search"></i>
                        </button>
                    </span>
                </div>
                <!-- /input-group -->
            </li>

            <g:each in="${grailsApplication.config.sbAdmin2.menus}" var="menu">
                <li>
                    <g:link controller="${menu.controller}" action="${menu.action}">
                        <i class="fa ${menu.icon} fa-fw"></i> ${menu.title}
                        <g:if test="${!menu.submenus?.empty}"><span class="fa arrow"></span></g:if>
                    </g:link>
                    <g:if test="${!menu.submenus?.empty}">
                        <g:each in="${menu.submenus}" var="submenu">
                            <ul class="nav nav-second-level">
                                <li>
                                    <g:link controller="${submenu.controller}" action="${submenu.action}">
                                        <i class="fa ${submenu.icon} fa-fw"></i> ${submenu.title}
                                        <g:if test="${!menu.submenus?.empty}"><span class="fa arrow"></span></g:if>
                                    </g:link>
                                    <g:if test="${!submenu.submenus?.empty}">
                                        <g:each in="${submenu.submenus}" var="subsubmenu">
                                            <ul class="nav nav-third-level">
                                                <li>
                                                    <g:link controller="${subsubmenu.controller}"
                                                            action="${subsubmenu.action}">
                                                        <i class="fa ${subsubmenu.icon} fa-fw"></i> ${subsubmenu.title}
                                                    </g:link>
                                                </li>
                                            </ul>
                                        </g:each>
                                    </g:if>
                                </li>
                            </ul>
                        </g:each>
                    </g:if>

                <!-- /.nav-second-level -->
                </li>

            </g:each>
        </ul>
    </div>
    <!-- /.sidebar-collapse -->
</div>
