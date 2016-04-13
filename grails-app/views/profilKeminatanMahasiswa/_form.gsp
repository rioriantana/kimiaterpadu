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
	<g:select name="jenisKelamin" from="${profilKeminatanMahasiswaInstance.constraints.jenisKelamin.inList}" value="${profilKeminatanMahasiswaInstance?.jenisKelamin}" valueMessagePrefix="profilKeminatanMahasiswa.jenisKelamin" />

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

<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'nomorTelepon', 'error')} ">
	<label for="nomorTelepon">
		<g:message code="profilKeminatanMahasiswa.nomorTelepon.label" default="Nomor Telepon" />
		
	</label>
	<g:textField name="nomorTelepon" value="${profilKeminatanMahasiswaInstance?.nomorTelepon}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'metodePemilihanPembimbing', 'error')} ">
	<label for="metodePemilihanPembimbing">
		<g:message code="profilKeminatanMahasiswa.metodePemilihanPembimbing.label" default="Metode Pemilihan Pembimbing" />
		
	</label>
	<g:if test="${profilKeminatanMahasiswaInstance.status}">
		${profilKeminatanMahasiswaInstance.metodePemilihanPembimbing}
	</g:if>
	<g:else>
	<g:select id="mySelect" onchange="myFunction()" name="metodePemilihanPembimbing" from="${profilKeminatanMahasiswaInstance.constraints.metodePemilihanPembimbing.inList}" value="${profilKeminatanMahasiswaInstance?.metodePemilihanPembimbing}" valueMessagePrefix="profilKeminatanMahasiswa.metodePemilihanPembimbing"/>
	</g:else>
</div>

<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'dosenPembimbing', 'error')} ">
	<label for="dosenPembimbing">
		<g:message code="profilKeminatanMahasiswa.dosenPembimbing.label" default="Dosen Pembimbing" />
		
	</label>
	<g:if test="${profilKeminatanMahasiswaInstance.status}">
		${profilKeminatanMahasiswaInstance.dosenPembimbing}
	</g:if>
	<g:else>
	<g:select id="dosenPembimbing" name="dosenPembimbing.id" from="${kimiaterpadu.Pembimbing.findAllByRoleAndKuotaBetween('DOSEN', 1, 9)}" optionKey="id" value="${profilKeminatanMahasiswaInstance?.dosenPembimbing?.id}" class="many-to-one" noSelection="['': '']"/>
	</g:else>

</div>

<div class="fieldcontain ${hasErrors(bean: profilKeminatanMahasiswaInstance, field: 'keminatan', 'error')} ">
	<label for="keminatan">
		<g:message code="profilKeminatanMahasiswa.keminatan.label" default="Keminatan" />
		
	</label>
	<g:if test="${profilKeminatanMahasiswaInstance.status}">
		${profilKeminatanMahasiswaInstance.keminatan}
	</g:if>
	<g:else>
	<g:select disabled="true" id="keminatan" name="keminatan" from="${profilKeminatanMahasiswaInstance.constraints.keminatan.inList}" value="${profilKeminatanMahasiswaInstance?.keminatan}" valueMessagePrefix="profilKeminatanMahasiswa.keminatan" noSelection="['': '']"/>
	</g:else>

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

<script>
function myFunction() {
    var x = document.getElementById("mySelect").value;
    if (x == "Pilih Dosen") {
    	document.getElementById('keminatan').disabled = true;
    	document.getElementById('keminatan').value = "";
    	document.getElementById('dosenPembimbing').disabled = false;
    }
    else{
    	document.getElementById('dosenPembimbing').disabled = true;
    	document.getElementById('dosenPembimbing').value = "";
    	document.getElementById('keminatan').disabled = false;
    }
}
</script>