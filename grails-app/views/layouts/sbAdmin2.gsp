<!DOCTYPE html>
<html
        lang="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}"
        xmlns='http://www.w3.org/1999/xhtml' xmlns:og='http://ogp.me/ns#'>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><g:layoutTitle default="${meta(name: 'app.name')}"/></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <asset:stylesheet src="sbAdmin2.css"/>
    <asset:javascript src="sbAdmin2.js"/>

</head>

<body>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <!-- Enable to overwrite Header by individual page -->
    <g:if test="${pageProperty(name: 'page.header')}">
    <g:pageProperty name="page.header"/>
    </g:if>
    <g:else>
        <g:render template="/layouts/header"/>
    </g:else>


    <g:render template="/layouts/status"/>
    <g:render template="/layouts/sidebar"/>
    <!-- /.navbar-static-side -->
</nav>

%{--<g:render template="/layouts/content"/>--}%
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">

            <g:layoutBody/>
            <g:pageProperty name="page.body"/>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
</div>
<!-- /#page-wrapper -->

<!-- Enable to overwrite Footer by individual page -->
<g:if test="${pageProperty(name: 'page.footer')}">
    <g:pageProperty name="page.footer"/>
</g:if>
%{--<g:else>--}%
%{--<g:render template="/layouts/footer"/>--}%
%{--</g:else>--}%
%{--<g:render template="/login/auth"/>--}%

<!-- Enable to insert additional components (e.g., modals, javascript, etc.) by any individual page -->
<g:if test="${pageProperty(name: 'page.include.bottom')}">
    <g:pageProperty name="page.include.bottom"/>
</g:if>
<g:else>
<%--		<!-- Insert a modal dialog for registering (for an open site registering is possible on any page) -->--%>
<%--				<g:render template="/login/auth" />--%>
</g:else>

</body>

</html>