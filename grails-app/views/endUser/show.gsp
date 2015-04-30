
<%@ page import="shittogether.EndUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'endUser.label', default: 'EndUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-endUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-endUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list endUser">
			
				<g:if test="${endUserInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="endUser.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${endUserInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${endUserInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="endUser.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${endUserInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${endUserInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="endUser.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${endUserInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${endUserInstance?.activeTasks}">
				<li class="fieldcontain">
					<span id="activeTasks-label" class="property-label"><g:message code="endUser.activeTasks.label" default="Active Tasks" /></span>
					
						<g:each in="${endUserInstance.activeTasks}" var="a">
						<span class="property-value" aria-labelledby="activeTasks-label"><g:link controller="task" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${endUserInstance?.birthday}">
				<li class="fieldcontain">
					<span id="birthday-label" class="property-label"><g:message code="endUser.birthday.label" default="Birthday" /></span>
					
						<span class="property-value" aria-labelledby="birthday-label"><g:formatDate date="${endUserInstance?.birthday}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${endUserInstance?.createdTasks}">
				<li class="fieldcontain">
					<span id="createdTasks-label" class="property-label"><g:message code="endUser.createdTasks.label" default="Created Tasks" /></span>
					
						<g:each in="${endUserInstance.createdTasks}" var="c">
						<span class="property-value" aria-labelledby="createdTasks-label"><g:link controller="task" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${endUserInstance?.finishedTasks}">
				<li class="fieldcontain">
					<span id="finishedTasks-label" class="property-label"><g:message code="endUser.finishedTasks.label" default="Finished Tasks" /></span>
					
						<g:each in="${endUserInstance.finishedTasks}" var="f">
						<span class="property-value" aria-labelledby="finishedTasks-label"><g:link controller="task" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${endUserInstance?.fullName}">
				<li class="fieldcontain">
					<span id="fullName-label" class="property-label"><g:message code="endUser.fullName.label" default="Full Name" /></span>
					
						<span class="property-value" aria-labelledby="fullName-label"><g:fieldValue bean="${endUserInstance}" field="fullName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:endUserInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${endUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
