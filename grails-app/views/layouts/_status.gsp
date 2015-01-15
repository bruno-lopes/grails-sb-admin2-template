<ul class="nav navbar-top-links navbar-right">
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
            <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
        </a>
        <ul class="dropdown-menu dropdown-messages">
            <g:each in="${messages}" var="message" status="i">
                <li>
                    <a href="#">
                        <div>
                            <strong>${message.sender}</strong>
                            <span class="pull-right text-muted">
                                <em>${message.date}</em>
                            </span>
                        </div>

                        <div>${message.text}</div>
                    </a>
                </li>
                <li class="divider"></li>

            </g:each>
            <li>
                <a class="text-center" href="#">
                    <strong><g:message code="sbAdmin2.messages.viewAllMessages"/></strong>
                    <i class="fa fa-angle-right"></i>
                </a>
            </li>
        </ul>
        <!-- /.dropdown-messages -->
    </li>
    <!-- /.dropdown -->
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
            <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
        </a>
        <ul class="dropdown-menu dropdown-tasks">
            <g:each in="${tasks}" var="task">
                <li>
                    <a href="#">
                        <div>
                            <p>
                                <strong>${task.name}</strong>
                                <span class="pull-right text-muted">${task.percentage}% <g:message
                                        code="sbAdmin2.tasks.complete"/></span>
                            </p>

                            <div class="progress progress-striped active">
                                <div class="progress-bar ${task.type}" role="progressbar"
                                     aria-valuenow="${task.percentage}"
                                     aria-valuemin="0" aria-valuemax="100" style="width: ${task.percentage}%">
                                    <span class="sr-only">${task.text}</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
            </g:each>
            <li>
                <a class="text-center" href="#">
                    <strong><g:message code="sbAdmin2.tasks.viewAllTasks"/></strong>
                    <i class="fa fa-angle-right"></i>
                </a>
            </li>
        </ul>
        <!-- /.dropdown-tasks -->
    </li>
    <!-- /.dropdown -->
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
            <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
        </a>
        <ul class="dropdown-menu dropdown-alerts">
            <g:each in="${alerts}" var="alert">
                <li>
                    <a href="#">
                        <div>
                            <i class="fa ${alert.type} fa-fw"></i> ${alert.text}
                            <span class="pull-right text-muted small">${alert.time}</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
            </g:each>
            <li>
                <a class="text-center" href="#">
                    <strong><g:message code="sbAdmin2.alerts.viewAllAlerts"/></strong>
                    <i class="fa fa-angle-right"></i>
                </a>
            </li>
        </ul>
        <!-- /.dropdown-alerts -->
    </li>
    <!-- /.dropdown -->
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
            <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
        </a>
        <ul class="dropdown-menu dropdown-user">
            <g:if test="${isLogged == true}">
                <g:if test="${grailsApplication.config.sbAdmin2.status.profile.show}">
                    <li>
                    <g:link controller="${grailsApplication.config.sbAdmin2.status.profile.controller}"
                            action="${grailsApplication.config.sbAdmin2.status.profile.action}">
                        <i class="fa fa-user fa-fw"></i> <g:message code="sbAdmin2.application.user-profile"/>
                    </g:link>
                    </a>
                    </li>
                </g:if>
                <g:if test="${grailsApplication.config.sbAdmin2.status.settings.show}">
                    <li><g:link controller="${grailsApplication.config.sbAdmin2.status.settings.controller}"
                                action="${grailsApplication.config.sbAdmin2.status.settings.action}">
                        <i class="fa fa-gear fa-fw"></i> <g:message code="sbAdmin2.application.settings"/>
                    </g:link>
                    </li>
                </g:if>
                <li class="divider"></li>
                <li>
                    <g:link controller="${grailsApplication.config.sbAdmin2.status.logout.controller}"
                            action="${grailsApplication.config.sbAdmin2.status.logout.action}">
                        <i class="fa fa-sign-out fa-fw"></i> <g:message code="sbAdmin2.application.logout"/>
                    </g:link>
                </li>
            </g:if>
            <g:else>
                <li>

                    <g:link controller="${grailsApplication.config.sbAdmin2.status.login.controller}"
                            action="${grailsApplication.config.sbAdmin2.status.login.action}">
                        <i class="fa fa-sign-in fa-fw"></i> <g:message code="sbAdmin2.application.login"/>
                    </g:link>

                </li>
            </g:else>
        </ul>
        <!-- /.dropdown-user -->
    </li>
    <!-- /.dropdown -->
</ul>
<!-- /.navbar-top-links -->