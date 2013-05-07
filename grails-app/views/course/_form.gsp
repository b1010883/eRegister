<%@ page import="uk.ac.shu.webarch.eregister.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseClasses', 'error')} ">
	<label for="courseClasses">
		<g:message code="course.courseClasses.label" default="Course Classes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.courseClasses?}" var="c">
    <li><g:link controller="regClass" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regClass" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regClass.label', default: 'RegClass')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseCode', 'error')} ">
	<label for="courseCode">
		<g:message code="course.courseCode.label" default="Course Code" />
		
	</label>
	<g:textField name="courseCode" value="${courseInstance?.courseCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="course.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${courseInstance?.name}"/>
</div>

