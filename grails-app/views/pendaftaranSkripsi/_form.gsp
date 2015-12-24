<%@ page import="kimiaterpadu.PendaftaranSkripsi" %>



<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'nim', 'error')} ">
	<label for="nim">
		<g:message code="pendaftaranSkripsi.nim.label" default="Nim" />
		
	</label>
	<g:textField name="nim" value="${pendaftaranSkripsiInstance?.nim}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'nama', 'error')} ">
	<label for="nama">
		<g:message code="pendaftaranSkripsi.nama.label" default="Nama" />
		
	</label>
	<g:textField name="nama" value="${pendaftaranSkripsiInstance?.nama}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'pembimbing1', 'error')} ">
	<label for="pembimbing1">
		<g:message code="pendaftaranSkripsi.pembimbing1.label" default="Pembimbing1" />
		
	</label>
	<g:select id="pembimbing1" name="pembimbing1.id" from="${kimiaterpadu.Pembimbing.list()}" optionKey="id" value="${pendaftaranSkripsiInstance?.pembimbing1?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'pembimbing2', 'error')} ">
	<label for="pembimbing2">
		<g:message code="pendaftaranSkripsi.pembimbing2.label" default="Pembimbing2" />
		
	</label>
	<g:select id="pembimbing2" name="pembimbing2.id" from="${kimiaterpadu.Pembimbing.list()}" optionKey="id" value="${pendaftaranSkripsiInstance?.pembimbing2?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'judulSkripsi', 'error')} ">
	<label for="judulSkripsi">
		<g:message code="pendaftaranSkripsi.judulSkripsi.label" default="Judul Skripsi" />
		
	</label>
	<g:textField name="judulSkripsi" value="${pendaftaranSkripsiInstance?.judulSkripsi}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'jenisKelamin', 'error')} ">
	<label for="jenisKelamin">
		<g:message code="pendaftaranSkripsi.jenisKelamin.label" default="Jenis Kelamin" />
		
	</label>
	<g:textField name="jenisKelamin" value="${pendaftaranSkripsiInstance?.jenisKelamin}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'tempatTanggalLahir', 'error')} ">
	<label for="tempatTanggalLahir">
		<g:message code="pendaftaranSkripsi.tempatTanggalLahir.label" default="Tempat Tanggal Lahir" />
		
	</label>
	<g:textField name="tempatTanggalLahir" value="${pendaftaranSkripsiInstance?.tempatTanggalLahir}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="pendaftaranSkripsi.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${pendaftaranSkripsiInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'telepon', 'error')} ">
	<label for="telepon">
		<g:message code="pendaftaranSkripsi.telepon.label" default="Telepon" />
		
	</label>
	<g:textField name="telepon" value="${pendaftaranSkripsiInstance?.telepon}"/>

</div>

