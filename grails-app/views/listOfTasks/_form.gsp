<%@ page import="shittogether.ListOfTasks" %>



<div class="fieldcontain ${hasErrors(bean: listOfTasksInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="listOfTasks.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${listOfTasksInstance?.creationDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: listOfTasksInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="listOfTasks.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${listOfTasksInstance?.dueDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: listOfTasksInstance, field: 'finishDate', 'error')} required">
	<label for="finishDate">
		<g:message code="listOfTasks.finishDate.label" default="Finish Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="finishDate" precision="day"  value="${listOfTasksInstance?.finishDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: listOfTasksInstance, field: 'listName', 'error')} required">
	<label for="listName">
		<g:message code="listOfTasks.listName.label" default="List Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="listName" required="" value="${listOfTasksInstance?.listName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: listOfTasksInstance, field: 'tasks', 'error')} ">
	<label for="tasks">
		<g:message code="listOfTasks.tasks.label" default="Tasks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${listOfTasksInstance?.tasks?}" var="t">
    <li><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['listOfTasks.id': listOfTasksInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: listOfTasksInstance, field: 'visibleToUserDate', 'error')} required">
	<label for="visibleToUserDate">
		<g:message code="listOfTasks.visibleToUserDate.label" default="Visible To User Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="visibleToUserDate" precision="day"  value="${listOfTasksInstance?.visibleToUserDate}"  />

</div>

