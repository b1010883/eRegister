<%@ page import="uk.ac.shu.webarch.eregister.RegClass" %>



<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'className', 'error')} ">
	<label for="className">
		<g:message code="regClass.className.label" default="Class Name" />
		
	</label>
	<g:textField name="className" value="${regClassInstance?.className}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'classNumber', 'error')} required">
	<label for="classNumber">
		<g:message code="regClass.classNumber.label" default="Class Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="classNumber" type="number" value="${regClassInstance.classNumber}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'classRegister', 'error')} ">
	<label for="classRegister">
		<g:message code="regClass.classRegister.label" default="Class Register" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regClassInstance?.classRegister?}" var="c">
    <li><g:link controller="registrationSheet" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registrationSheet" action="create" params="['regClass.id': regClassInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registrationSheet.label', default: 'RegistrationSheet')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="regClass.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${uk.ac.shu.webarch.eregister.Course.list()}" optionKey="id" required="" value="${regClassInstance?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'enrolled', 'error')} ">
	<label for="enrolled">
		<g:message code="regClass.enrolled.label" default="Enrolled" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regClassInstance?.enrolled?}" var="e">
    <li><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['regClass.id': regClassInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'instructor', 'error')} required">
	<label for="instructor">
		<g:message code="regClass.instructor.label" default="Instructor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="instructor" name="instructor.id" from="${uk.ac.shu.webarch.eregister.Instructor.list()}" optionKey="id" required="" value="${regClassInstance?.instructor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="regClass.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${regClassInstance?.location}"/>
</div>

