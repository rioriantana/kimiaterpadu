<%@ page import="kimiaterpadu.Logbook" %>



<div class="fieldcontain ${hasErrors(bean: logbookInstance, field: 'tanggal', 'error')} ">
	<label for="tanggal">
		<g:message code="logbook.tanggal.label" default="Tanggal" />
		
	</label>
	<g:datePicker name="tanggal" precision="day"  value="${logbookInstance?.tanggal}" value="${new Date()}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: logbookInstance, field: 'kegiatan', 'error')} ">
	<label for="kegiatan">
		<g:message code="logbook.kegiatan.label" default="Kegiatan" />
		
	</label>
	<g:textField name="kegiatan" value="${logbookInstance?.kegiatan}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: logbookInstance, field: 'kemajuan', 'error')} ">
	<label for="kemajuan">
		<g:message code="logbook.kemajuan.label" default="Kemajuan" />
		
	</label>
	<g:textField name="kemajuan" value="${logbookInstance?.kemajuan}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: logbookInstance, field: 'kendala', 'error')} ">
	<label for="kendala">
		<g:message code="logbook.kendala.label" default="Kendala" />
		
	</label>
	<g:textField name="kendala" value="${logbookInstance?.kendala}"/>

</div>

