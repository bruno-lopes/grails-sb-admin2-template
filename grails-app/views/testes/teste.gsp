<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 08/11/14
  Time: 19:53
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:message code="default.contact.title"/></title>
    <g:set var="messages" value="${[
            [sender:'Brunim', date:'Ontem', text: 'Vai lá fi!'],
            [sender:'Brunim', date:'Ontem', text: 'Nem vo!']
    ]}"  scope="request"/>

    <g:set var="tasks" value="${[
            [name:'Tarefa 1', percentage:30, text: 'Vai lá fi!', type: 'progress-bar-success'],
            [name:'Tarefa 11', percentage:70, text: 'Vai lá fi22!', type: 'progress-bar-info'],
            [name:'Tarefa 15', percentage:70, text: 'Vai lá fi22!', type: 'progress-bar-warning'],
            [name:'Tarefa 151', percentage:70, text: 'Vai lá fi22!', type: 'progress-bar-danger']
    ]}"  scope="request"/>

    <g:set var="alerts" value="${[
            [text:'Alerta 1', time: 'Vai lá fi1!', type: 'fa-comment'],
            [text:'Alerta 2', time: 'Vai lá fi2!', type: 'fa-twitter'],
            [text:'Alerta 3', time: 'Vai lá fi3!', type: 'fa-envelope'],
            [text:'Alerta 4', time: 'Vai lá fi4!', type: 'fa-tasks'],
            [text:'Alerta 5', time: 'Vai lá fi4!', type: 'fa-upload']

    ]}"  scope="request"/>

    <meta name="layout" content="sbAdmin2"/>
</head>

<body>
${messages}
</body>
</html>