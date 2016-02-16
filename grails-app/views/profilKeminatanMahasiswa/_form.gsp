<%@ page import="kimiaterpadu.ProfilKeminatanMahasiswa" %>



<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'nim', 'error')} ">
	<label for="nim">
		<g:message code="profilKeminatanMahasiswa.nim.label" default="Nim" />
		
	</label>
	<g:textField name="nim" value="${profilKeminatanMahasiswaInstance?.nim}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'nama', 'error')} ">
	<label for="nama">
		<g:message code="profilKeminatanMahasiswa.nama.label" default="Nama" />
		
	</label>
	<g:textField name="nama" value="${profilKeminatanMahasiswaInstance?.nama}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'jenisKelamin', 'error')} ">
	<label for="jenisKelamin">
		<g:message code="profilKeminatanMahasiswa.jenisKelamin.label" default="Jenis Kelamin" />
		
	</label>
	<g:select name="jenisKelamin" from="${profilKeminatanMahasiswaInstance.constraints.jenisKelamin.inList}" value="${profilKeminatanMahasiswaInstance?.jenisKelamin}" valueMessagePrefix="profilKeminatanMahasiswa.jenisKelamin" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'tempatTanggalLahir', 'error')} ">
	<label for="tempatTanggalLahir">
		<g:message code="profilKeminatanMahasiswa.tempatTanggalLahir.label" default="Tempat Tanggal Lahir" />
		
	</label>
	<g:textField name="tempatTanggalLahir" value="${profilKeminatanMahasiswaInstance?.tempatTanggalLahir}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="profilKeminatanMahasiswa.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${profilKeminatanMahasiswaInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'metodePemilihanPembimbing', 'error')} ">
	<label for="metodePemilihanPembimbing">
		<g:message code="profilKeminatanMahasiswa.metodePemilihanPembimbing.label" default="Metode Pemilihan Pembimbing" />
		
	</label>
	<g:select name="metodePemilihanPembimbing" from="${profilKeminatanMahasiswaInstance.constraints.metodePemilihanPembimbing.inList}" value="${profilKeminatanMahasiswaInstance?.metodePemilihanPembimbing}" valueMessagePrefix="profilKeminatanMahasiswa.metodePemilihanPembimbing" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'dosenPembimbing', 'error')} ">
	<label for="dosenPembimbing">
		<g:message code="profilKeminatanMahasiswa.dosenPembimbing.label" default="Dosen Pembimbing" />
		
	</label>
	<g:select id="dosenPembimbing" name="dosenPembimbing.id" from="${kimiaterpadu.Pembimbing.list()}" optionKey="id" value="${profilKeminatanMahasiswaInstance?.dosenPembimbing?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'keminatan', 'error')} ">
	<label for="keminatan">
		<g:message code="profilKeminatanMahasiswa.keminatan.label" default="Keminatan" />
		
	</label>
	<g:select name="keminatan" from="${profilKeminatanMahasiswaInstance.constraints.keminatan.inList}" value="${profilKeminatanMahasiswaInstance?.keminatan}" valueMessagePrefix="profilKeminatanMahasiswa.keminatan" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'sksPeroleh', 'error')} ">
	<label for="sksPeroleh">
		<g:message code="profilKeminatanMahasiswa.sksPeroleh.label" default="Sks Peroleh" />
		
	</label>
	<g:textField name="sksPeroleh" value="${profilKeminatanMahasiswaInstance?.sksPeroleh}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'sksSemesterIni', 'error')} ">
	<label for="sksSemesterIni">
		<g:message code="profilKeminatanMahasiswa.sksSemesterIni.label" default="Sks Semester Ini" />
		
	</label>
	<g:textField name="sksSemesterIni" value="${profilKeminatanMahasiswaInstance?.sksSemesterIni}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="profilKeminatanMahasiswa.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${profilKeminatanMahasiswaInstance?.password}"/>

</div>
