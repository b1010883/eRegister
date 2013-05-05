<%@ page import="uk.ac.shu.webarch.eregister.RegisterEntry" %>



<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="registerEntry.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${registerEntryInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'registrationSheet', 'error')} required">
	<label for="registrationSheet">
		<g:message code="registerEntry.registrationSheet.label" default="Registration Sheet" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="registrationSheet" name="registrationSheet.id" from="${uk.ac.shu.webarch.eregister.RegistrationSheet.list()}" optionKey="id" required="" value="${registerEntryInstance?.registrationSheet?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="registerEntry.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${uk.ac.shu.webarch.eregister.Student.list()}" optionKey="id" required="" value="${registerEntryInstance?.student?.id}" class="many-to-one"/>
</div>

