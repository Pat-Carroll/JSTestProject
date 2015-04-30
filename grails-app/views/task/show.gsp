
<%@ page import="shittogether.Task" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-task" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list task">
			
				<g:if test="${taskInstance?.creationDate}">
				<li class="fieldcontain">
					<span id="creationDate-label" class="property-label"><g:message code="task.creationDate.label" default="Creation Date" /></span>
					
						<span class="property-value" aria-labelledby="creationDate-label"><g:formatDate date="${taskInstance?.creationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="task.dueDate.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${taskInstance?.dueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.finishDate}">
				<li class="fieldcontain">
					<span id="finishDate-label" class="property-label"><g:message code="task.finishDate.label" default="Finish Date" /></span>
					
						<span class="property-value" aria-labelledby="finishDate-label"><g:formatDate date="${taskInstance?.finishDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.listOfTasks}">
				<li class="fieldcontain">
					<span id="listOfTasks-label" class="property-label"><g:message code="task.listOfTasks.label" default="List Of Tasks" /></span>
					
						<span class="property-value" aria-labelledby="listOfTasks-label"><g:link controller="listOfTasks" action="show" id="${taskInstance?.listOfTasks?.id}">${taskInstance?.listOfTasks?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.taskAuthor}">
				<li class="fieldcontain">
					<span id="taskAuthor-label" class="property-label"><g:message code="task.taskAuthor.label" default="Task Author" /></span>
					
						<span class="property-value" aria-labelledby="taskAuthor-label"><g:link controller="endUser" action="show" id="${taskInstance?.taskAuthor?.id}">${taskInstance?.taskAuthor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.taskCompleter}">
				<li class="fieldcontain">
					<span id="taskCompleter-label" class="property-label"><g:message code="task.taskCompleter.label" default="Task Completer" /></span>
					
						<span class="property-value" aria-labelledby="taskCompleter-label"><g:link controller="endUser" action="show" id="${taskInstance?.taskCompleter?.id}">${taskInstance?.taskCompleter?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.taskName}">
				<li class="fieldcontain">
					<span id="taskName-label" class="property-label"><g:message code="task.taskName.label" default="Task Name" /></span>
					
						<span class="property-value" aria-labelledby="taskName-label"><g:fieldValue bean="${taskInstance}" field="taskName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.taskWorker}">
				<li class="fieldcontain">
					<span id="taskWorker-label" class="property-label"><g:message code="task.taskWorker.label" default="Task Worker" /></span>
					
						<span class="property-value" aria-labelledby="taskWorker-label"><g:link controller="endUser" action="show" id="${taskInstance?.taskWorker?.id}">${taskInstance?.taskWorker?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.visibleToUserDate}">
				<li class="fieldcontain">
					<span id="visibleToUserDate-label" class="property-label"><g:message code="task.visibleToUserDate.label" default="Visible To User Date" /></span>
					
						<span class="property-value" aria-labelledby="visibleToUserDate-label"><g:formatDate date="${taskInstance?.visibleToUserDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:taskInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${taskInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
