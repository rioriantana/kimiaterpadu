<%@ page import="kimiaterpadu.Pembimbing" %>



<div class="fieldcontain ${hasErrors(bean: pembimbingInstance, field: 'nidn', 'error')} ">
	<label for="nidn">
		<g:message code="pembimbing.nidn.label" default="Nidn" />
		
	</label>
	<g:textField name="nidn" value="${pembimbingInstance?.nidn}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pembimbingInstance, field: 'nip', 'error')} ">
	<label for="nip">
		<g:message code="pembimbing.nip.label" default="Nip" />
		
	</label>
	<g:textField name="nip" value="${pembimbingInstance?.nip}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pembimbingInstance, field: 'nama', 'error')} ">
	<label for="nama">
		<g:message code="pembimbing.nama.label" default="Nama" />
		
	</label>
	<g:textField name="nama" value="${pembimbingInstance?.nama}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pembimbingInstance, field: 'kuota', 'error')} ">
	<label for="kuota">
		<g:message code="pembimbing.kuota.label" default="Kuota" />
		
	</label>
	<g:textField name="kuota" value="${pembimbingInstance?.kuota}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pembimbingInstance, field: 'kodeAkses', 'error')} ">
	<label for="kodeAkses">
		<g:message code="pembimbing.kodeAkses.label" default="Kode Akses" />
		
	</label>
	<g:textField name="kodeAkses" value="${pembimbingInstance?.kodeAkses}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pembimbingInstance, field: 'role', 'error')} ">
	<label for="role">
		<g:message code="pembimbing.role.label" default="Role" />
		
	</label>
	<g:select name="role" from="${pembimbingInstance.constraints.role.inList}" value="${pembimbingInstance?.role}" valueMessagePrefix="pembimbing.role" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pembimbingInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="pembimbing.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${pembimbingInstance?.password}"/>

</div>

