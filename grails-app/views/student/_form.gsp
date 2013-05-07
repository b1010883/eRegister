<%@ page import="uk.ac.shu.webarch.eregister.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'enrolled', 'error')} ">
	<label for="enrolled">
		<g:message code="student.enrolled.label" default="Enrolled" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.enrolled?}" var="e">
    <li><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentAddress', 'error')} ">
	<label for="studentAddress">
		<g:message code="student.studentAddress.label" default="Student Address" />
		
	</label>
	<g:textField name="studentAddress" value="${studentInstance?.studentAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentName', 'error')} ">
	<label for="studentName">
		<g:message code="student.studentName.label" default="Student Name" />
		
	</label>
	<g:textField name="studentName" value="${studentInstance?.studentName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentNumber', 'error')} ">
	<label for="studentNumber">
		<g:message code="student.studentNumber.label" default="Student Number" />
		
	</label>
	<g:textField name="studentNumber" value="${studentInstance?.studentNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentRegister', 'error')} ">
	<label for="studentRegister">
		<g:message code="student.studentRegister.label" default="Student Register" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.studentRegister?}" var="s">
    <li><g:link controller="registerEntry" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registerEntry" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registerEntry.label', default: 'RegisterEntry')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentTelephone', 'error')} ">
	<label for="studentTelephone">
		<g:message code="student.studentTelephone.label" default="Student Telephone" />
		
	</label>
	<g:textField name="studentTelephone" value="${studentInstance?.studentTelephone}"/>
</div>

