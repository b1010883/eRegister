
<%@ page import="uk.ac.shu.webarch.eregister.RegClass" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regClass.label', default: 'RegClass')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-regClass" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-regClass" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list regClass">
			
				<g:if test="${regClassInstance?.className}">
				<li class="fieldcontain">
					<span id="className-label" class="property-label"><g:message code="regClass.className.label" default="Class Name" /></span>
					
						<span class="property-value" aria-labelledby="className-label"><g:fieldValue bean="${regClassInstance}" field="className"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regClassInstance?.classNumber}">
				<li class="fieldcontain">
					<span id="classNumber-label" class="property-label"><g:message code="regClass.classNumber.label" default="Class Number" /></span>
					
						<span class="property-value" aria-labelledby="classNumber-label"><g:fieldValue bean="${regClassInstance}" field="classNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regClassInstance?.classRegister}">
				<li class="fieldcontain">
					<span id="classRegister-label" class="property-label"><g:message code="regClass.classRegister.label" default="Class Register" /></span>
					
						<g:each in="${regClassInstance.classRegister}" var="c">
						<span class="property-value" aria-labelledby="classRegister-label"><g:link controller="registrationSheet" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${regClassInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="regClass.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${regClassInstance?.course?.id}">${regClassInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${regClassInstance?.enrolled}">
				<li class="fieldcontain">
					<span id="enrolled-label" class="property-label"><g:message code="regClass.enrolled.label" default="Enrolled" /></span>
					
						<g:each in="${regClassInstance.enrolled}" var="e">
						<span class="property-value" aria-labelledby="enrolled-label"><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${regClassInstance?.instructor}">
				<li class="fieldcontain">
					<span id="instructor-label" class="property-label"><g:message code="regClass.instructor.label" default="Instructor" /></span>
					
						<span class="property-value" aria-labelledby="instructor-label"><g:link controller="instructor" action="show" id="${regClassInstance?.instructor?.id}">${regClassInstance?.instructor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${regClassInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="regClass.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${regClassInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${regClassInstance?.id}" />
					<g:link class="edit" action="edit" id="${regClassInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
