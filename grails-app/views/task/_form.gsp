<%@ page import="shittogether.Task" %>



<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="task.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${taskInstance?.creationDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="task.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${taskInstance?.dueDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'finishDate', 'error')} required">
	<label for="finishDate">
		<g:message code="task.finishDate.label" default="Finish Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="finishDate" precision="day"  value="${taskInstance?.finishDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'listOfTasks', 'error')} required">
	<label for="listOfTasks">
		<g:message code="task.listOfTasks.label" default="List Of Tasks" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="listOfTasks" name="listOfTasks.id" from="${shittogether.ListOfTasks.list()}" optionKey="id" required="" value="${taskInstance?.listOfTasks?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'taskAuthor', 'error')} required">
	<label for="taskAuthor">
		<g:message code="task.taskAuthor.label" default="Task Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="taskAuthor" name="taskAuthor.id" from="${shittogether.EndUser.list()}" optionKey="id" required="" value="${taskInstance?.taskAuthor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'taskCompleter', 'error')} required">
	<label for="taskCompleter">
		<g:message code="task.taskCompleter.label" default="Task Completer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="taskCompleter" name="taskCompleter.id" from="${shittogether.EndUser.list()}" optionKey="id" required="" value="${taskInstance?.taskCompleter?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'taskName', 'error')} required">
	<label for="taskName">
		<g:message code="task.taskName.label" default="Task Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="taskName" required="" value="${taskInstance?.taskName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'taskWorker', 'error')} required">
	<label for="taskWorker">
		<g:message code="task.taskWorker.label" default="Task Worker" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="taskWorker" name="taskWorker.id" from="${shittogether.EndUser.list()}" optionKey="id" required="" value="${taskInstance?.taskWorker?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'visibleToUserDate', 'error')} required">
	<label for="visibleToUserDate">
		<g:message code="task.visibleToUserDate.label" default="Visible To User Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="visibleToUserDate" precision="day"  value="${taskInstance?.visibleToUserDate}"  />

</div>

