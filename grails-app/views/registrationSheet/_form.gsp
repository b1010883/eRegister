<%@ page import="uk.ac.shu.webarch.eregister.RegistrationSheet" %>



<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'attended', 'error')} ">
	<label for="attended">
		<g:message code="registrationSheet.attended.label" default="Attended" />
		
	</label>
	<g:textField name="attended" value="${registrationSheetInstance?.attended}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'regClass', 'error')} required">
	<label for="regClass">
		<g:message code="registrationSheet.regClass.label" default="Reg Class" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="regClass" name="regClass.id" from="${uk.ac.shu.webarch.eregister.RegClass.list()}" optionKey="id" required="" value="${registrationSheetInstance?.regClass?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'registerStudent', 'error')} ">
	<label for="registerStudent">
		<g:message code="registrationSheet.registerStudent.label" default="Register Student" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${registrationSheetInstance?.registerStudent?}" var="r">
    <li><g:link controller="registerEntry" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registerEntry" action="create" params="['registrationSheet.id': registrationSheetInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registerEntry.label', default: 'RegisterEntry')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'studentName', 'error')} ">
	<label for="studentName">
		<g:message code="registrationSheet.studentName.label" default="Student Name" />
		
	</label>
	<g:textField name="studentName" value="${registrationSheetInstance?.studentName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'studentNum', 'error')} required">
	<label for="studentNum">
		<g:message code="registrationSheet.studentNum.label" default="Student Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="studentNum" type="number" value="${registrationSheetInstance.studentNum}" required=""/>
</div>

