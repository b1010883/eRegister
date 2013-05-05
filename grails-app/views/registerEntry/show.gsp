
<%@ page import="uk.ac.shu.webarch.eregister.RegisterEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registerEntry.label', default: 'RegisterEntry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registerEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registerEntry" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registerEntry">
			
				<g:if test="${registerEntryInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="registerEntry.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${registerEntryInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerEntryInstance?.registrationSheet}">
				<li class="fieldcontain">
					<span id="registrationSheet-label" class="property-label"><g:message code="registerEntry.registrationSheet.label" default="Registration Sheet" /></span>
					
						<span class="property-value" aria-labelledby="registrationSheet-label"><g:link controller="registrationSheet" action="show" id="${registerEntryInstance?.registrationSheet?.id}">${registerEntryInstance?.registrationSheet?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerEntryInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="registerEntry.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="student" action="show" id="${registerEntryInstance?.student?.id}">${registerEntryInstance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${registerEntryInstance?.id}" />
					<g:link class="edit" action="edit" id="${registerEntryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
