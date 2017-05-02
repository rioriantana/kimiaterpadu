<%@ page import="kimiaterpadu.Pengaturan" %>



<div class="fieldcontain ${hasErrors(bean: pengaturanInstance, field: 'keminatan', 'error')} ">
	<label for="keminatan">
		<g:message code="pengaturan.keminatan.label" default="Keminatan" />
		
	</label>
	<g:textField name="keminatan" value="${pengaturanInstance?.keminatan}"/>

</div>

