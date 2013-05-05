<%@ page import="uk.ac.shu.webarch.eregister.Instructor" %>



<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'classesTaught', 'error')} ">
	<label for="classesTaught">
		<g:message code="instructor.classesTaught.label" default="Classes Taught" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${instructorInstance?.classesTaught?}" var="c">
    <li><g:link controller="regClass" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regClass" action="create" params="['instructor.id': instructorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regClass.label', default: 'RegClass')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'instructorNumber', 'error')} required">
	<label for="instructorNumber">
		<g:message code="instructor.instructorNumber.label" default="Instructor Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="instructorNumber" type="number" value="${instructorInstance.instructorNumber}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="instructor.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${instructorInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'profession', 'error')} ">
	<label for="profession">
		<g:message code="instructor.profession.label" default="Profession" />
		
	</label>
	<g:textField name="profession" value="${instructorInstance?.profession}"/>
</div>

