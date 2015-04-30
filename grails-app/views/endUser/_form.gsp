<%@ page import="shittogether.EndUser" %>



<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="endUser.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${endUserInstance?.userName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="endUser.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${endUserInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="endUser.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${endUserInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'activeTasks', 'error')} ">
	<label for="activeTasks">
		<g:message code="endUser.activeTasks.label" default="Active Tasks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${endUserInstance?.activeTasks?}" var="a">
    <li><g:link controller="task" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['endUser.id': endUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'birthday', 'error')} required">
	<label for="birthday">
		<g:message code="endUser.birthday.label" default="Birthday" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthday" precision="day"  value="${endUserInstance?.birthday}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'createdTasks', 'error')} ">
	<label for="createdTasks">
		<g:message code="endUser.createdTasks.label" default="Created Tasks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${endUserInstance?.createdTasks?}" var="c">
    <li><g:link controller="task" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['endUser.id': endUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'finishedTasks', 'error')} ">
	<label for="finishedTasks">
		<g:message code="endUser.finishedTasks.label" default="Finished Tasks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${endUserInstance?.finishedTasks?}" var="f">
    <li><g:link controller="task" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['endUser.id': endUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'fullName', 'error')} required">
	<label for="fullName">
		<g:message code="endUser.fullName.label" default="Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fullName" required="" value="${endUserInstance?.fullName}"/>

</div>

