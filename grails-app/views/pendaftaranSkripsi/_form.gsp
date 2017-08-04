 <%@ page import="kimiaterpadu.PendaftaranSkripsi" %>



<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'namaNIM', 'error')} ">
	<label for="namaNIM">
		<g:message code="pendaftaranSkripsi.namaNIM.label" default="Nama NIM" />
		
	</label>
	<g:textField name="namaNIM1" value="${profilMahasiswa}" readonly="true"/>
	<g:field type="hidden" name="namaNIM" value="${profilMahasiswa.id}" readonly="true"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'pembimbing1', 'error')} ">
	<label for="pembimbing1">
		<g:message code="pendaftaranSkripsi.pembimbing1.label" default="Pembimbing1" />
		
	</label>
	<g:if test="${pendaftaranSkripsiInstance.status}">
		${pendaftaranSkripsiInstance.pembimbing1}
	</g:if>
	<g:else>
	<g:select id="pembimbing1" name="pembimbing1.id" from="${kimiaterpadu.Pembimbing.findAllByRole('DOSEN')}" optionKey="id" value="${pendaftaranSkripsiInstance?.pembimbing1?.id}" class="many-to-one" noSelection="['null': '']"/>
	</g:else>
</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'pembimbing2', 'error')} ">
	<label for="pembimbing2">
		<g:message code="pendaftaranSkripsi.pembimbing2.label" default="Pembimbing2" />
		
	</label>
	<g:if test="${pendaftaranSkripsiInstance.status}">
		${pendaftaranSkripsiInstance.pembimbing2}
	</g:if>
	<g:else>
	<g:select id="pembimbing2" name="pembimbing2.id" from="${kimiaterpadu.Pembimbing.findAllByRole('DOSEN')}" optionKey="id" value="${pendaftaranSkripsiInstance?.pembimbing2?.id}" class="many-to-one" noSelection="['null': '']"/>
	</g:else>
</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'judulSkripsi', 'error')} ">
	<label for="judulSkripsi">
		<g:message code="pendaftaranSkripsi.judulSkripsi.label" default="Judul Skripsi" />
		
	</label>
	<g:textArea name="judulSkripsi" value="${pendaftaranSkripsiInstance?.judulSkripsi}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="pendaftaranSkripsi.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${pendaftaranSkripsiInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'tanggalSeminarProposal', 'error')} ">
	<label for="tanggalSeminarProposal">
		<g:message code="pendaftaranSkripsi.tanggalSeminarProposal.label" default="Berkas Seminar Proposal" />
		
	</label>
	<g:link>Upload Berkas</g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'tanggalSeminarHasil', 'error')} ">
	<label for="tanggalSeminarHasil">
		<g:message code="pendaftaranSkripsi.tanggalSeminarHasil.label" default="Berkas Seminar Hasil" />
		
	</label>
	
	<g:link>Upload Berkas</g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: pendaftaranSkripsiInstance, field: 'tanggalUjianSkripsi', 'error')} ">
	<label for="tanggalUjianSkripsi">
		<g:message code="pendaftaranSkripsi.tanggalUjianSkripsi.label" default="Berkas Ujian Skripsi" />
		
	</label>
	
	<g:link>Upload Berkas</g:link>

</div>

