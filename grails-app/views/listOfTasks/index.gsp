
<%@ page import="shittogether.ListOfTasks" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'listOfTasks.label', default: 'ListOfTasks')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-listOfTasks" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-listOfTasks" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="creationDate" title="${message(code: 'listOfTasks.creationDate.label', default: 'Creation Date')}" />
					
						<g:sortableColumn property="dueDate" title="${message(code: 'listOfTasks.dueDate.label', default: 'Due Date')}" />
					
						<g:sortableColumn property="finishDate" title="${message(code: 'listOfTasks.finishDate.label', default: 'Finish Date')}" />
					
						<g:sortableColumn property="listName" title="${message(code: 'listOfTasks.listName.label', default: 'List Name')}" />
					
						<g:sortableColumn property="visibleToUserDate" title="${message(code: 'listOfTasks.visibleToUserDate.label', default: 'Visible To User Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${listOfTasksInstanceList}" status="i" var="listOfTasksInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${listOfTasksInstance.id}">${fieldValue(bean: listOfTasksInstance, field: "creationDate")}</g:link></td>
					
						<td><g:formatDate date="${listOfTasksInstance.dueDate}" /></td>
					
						<td><g:formatDate date="${listOfTasksInstance.finishDate}" /></td>
					
						<td>${fieldValue(bean: listOfTasksInstance, field: "listName")}</td>
					
						<td><g:formatDate date="${listOfTasksInstance.visibleToUserDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${listOfTasksInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
