
<%@ page import="uk.ac.shu.webarch.eregister.RegClass" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regClass.label', default: 'RegClass')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-regClass" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-regClass" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="className" title="${message(code: 'regClass.className.label', default: 'Class Name')}" />
					
						<g:sortableColumn property="classNumber" title="${message(code: 'regClass.classNumber.label', default: 'Class Number')}" />
					
						<th><g:message code="regClass.course.label" default="Course" /></th>
					
						<th><g:message code="regClass.instructor.label" default="Instructor" /></th>
					
						<g:sortableColumn property="location" title="${message(code: 'regClass.location.label', default: 'Location')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${regClassInstanceList}" status="i" var="regClassInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${regClassInstance.id}">${fieldValue(bean: regClassInstance, field: "className")}</g:link></td>
					
						<td>${fieldValue(bean: regClassInstance, field: "classNumber")}</td>
					
						<td>${fieldValue(bean: regClassInstance, field: "course")}</td>
					
						<td>${fieldValue(bean: regClassInstance, field: "instructor")}</td>
					
						<td>${fieldValue(bean: regClassInstance, field: "location")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${regClassInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
