
<%@ page import="shittogether.Task" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-task" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="creationDate" title="${message(code: 'task.creationDate.label', default: 'Creation Date')}" />
					
						<g:sortableColumn property="dueDate" title="${message(code: 'task.dueDate.label', default: 'Due Date')}" />
					
						<g:sortableColumn property="finishDate" title="${message(code: 'task.finishDate.label', default: 'Finish Date')}" />
					
						<th><g:message code="task.listOfTasks.label" default="List Of Tasks" /></th>
					
						<th><g:message code="task.taskAuthor.label" default="Task Author" /></th>
					
						<th><g:message code="task.taskCompleter.label" default="Task Completer" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${taskInstanceList}" status="i" var="taskInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${taskInstance.id}">${fieldValue(bean: taskInstance, field: "creationDate")}</g:link></td>
					
						<td><g:formatDate date="${taskInstance.dueDate}" /></td>
					
						<td><g:formatDate date="${taskInstance.finishDate}" /></td>
					
						<td>${fieldValue(bean: taskInstance, field: "listOfTasks")}</td>
					
						<td>${fieldValue(bean: taskInstance, field: "taskAuthor")}</td>
					
						<td>${fieldValue(bean: taskInstance, field: "taskCompleter")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${taskInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
