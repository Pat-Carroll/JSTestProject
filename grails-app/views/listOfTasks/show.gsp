
<%@ page import="shittogether.ListOfTasks" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'listOfTasks.label', default: 'ListOfTasks')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-listOfTasks" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-listOfTasks" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list listOfTasks">
			
				<g:if test="${listOfTasksInstance?.creationDate}">
				<li class="fieldcontain">
					<span id="creationDate-label" class="property-label"><g:message code="listOfTasks.creationDate.label" default="Creation Date" /></span>
					
						<span class="property-value" aria-labelledby="creationDate-label"><g:formatDate date="${listOfTasksInstance?.creationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${listOfTasksInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="listOfTasks.dueDate.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${listOfTasksInstance?.dueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${listOfTasksInstance?.finishDate}">
				<li class="fieldcontain">
					<span id="finishDate-label" class="property-label"><g:message code="listOfTasks.finishDate.label" default="Finish Date" /></span>
					
						<span class="property-value" aria-labelledby="finishDate-label"><g:formatDate date="${listOfTasksInstance?.finishDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${listOfTasksInstance?.listName}">
				<li class="fieldcontain">
					<span id="listName-label" class="property-label"><g:message code="listOfTasks.listName.label" default="List Name" /></span>
					
						<span class="property-value" aria-labelledby="listName-label"><g:fieldValue bean="${listOfTasksInstance}" field="listName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${listOfTasksInstance?.tasks}">
				<li class="fieldcontain">
					<span id="tasks-label" class="property-label"><g:message code="listOfTasks.tasks.label" default="Tasks" /></span>
					
						<g:each in="${listOfTasksInstance.tasks}" var="t">
						<span class="property-value" aria-labelledby="tasks-label"><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${listOfTasksInstance?.visibleToUserDate}">
				<li class="fieldcontain">
					<span id="visibleToUserDate-label" class="property-label"><g:message code="listOfTasks.visibleToUserDate.label" default="Visible To User Date" /></span>
					
						<span class="property-value" aria-labelledby="visibleToUserDate-label"><g:formatDate date="${listOfTasksInstance?.visibleToUserDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:listOfTasksInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${listOfTasksInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
