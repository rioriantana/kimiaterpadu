
<%@ page import="kimiaterpadu.ProfilKeminatanMahasiswa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profilKeminatanMahasiswa.label', default: 'ProfilKeminatanMahasiswa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-profilKeminatanMahasiswa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="show-profilKeminatanMahasiswa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list profilKeminatanMahasiswa">
			
				<g:if test="${profilKeminatanMahasiswaInstance?.nim}">
				<li class="fieldcontain">
					<span id="nim-label" class="property-label"><g:message code="profilKeminatanMahasiswa.nim.label" default="Nim" /></span>
					
						<span class="property-value" aria-labelledby="nim-label"><g:fieldValue bean="${profilKeminatanMahasiswaInstance}" field="nim"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profilKeminatanMahasiswaInstance?.nama}">
				<li class="fieldcontain">
					<span id="nama-label" class="property-label"><g:message code="profilKeminatanMahasiswa.nama.label" default="Nama" /></span>
					
						<span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${profilKeminatanMahasiswaInstance}" field="nama"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profilKeminatanMahasiswaInstance?.jenisKelamin}">
				<li class="fieldcontain">
					<span id="jenisKelamin-label" class="property-label"><g:message code="profilKeminatanMahasiswa.jenisKelamin.label" default="Jenis Kelamin" /></span>
					
						<span class="property-value" aria-labelledby="jenisKelamin-label"><g:fieldValue bean="${profilKeminatanMahasiswaInstance}" field="jenisKelamin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profilKeminatanMahasiswaInstance?.tempatTanggalLahir}">
				<li class="fieldcontain">
					<span id="tempatTanggalLahir-label" class="property-label"><g:message code="profilKeminatanMahasiswa.tempatTanggalLahir.label" default="Tempat Tanggal Lahir" /></span>
					
						<span class="property-value" aria-labelledby="tempatTanggalLahir-label"><g:fieldValue bean="${profilKeminatanMahasiswaInstance}" field="tempatTanggalLahir"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profilKeminatanMahasiswaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="profilKeminatanMahasiswa.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${profilKeminatanMahasiswaInstance}" field="email"/></span>
					
				</li>
				</g:if>

				<g:if test="${profilKeminatanMahasiswaInstance?.nomorTelepon}">
				<li class="fieldcontain">
					<span id="nomorTelepon-label" class="property-label"><g:message code="profilKeminatanMahasiswa.nomorTelepon.label" default="Nomor Telepon" /></span>
					
						<span class="property-value" aria-labelledby="nomorTelepon-label"><g:fieldValue bean="${profilKeminatanMahasiswaInstance}" field="nomorTelepon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profilKeminatanMahasiswaInstance?.metodePemilihanPembimbing}">
				<li class="fieldcontain">
					<span id="metodePemilihanPembimbing-label" class="property-label"><g:message code="profilKeminatanMahasiswa.metodePemilihanPembimbing.label" default="Metode Pemilihan Pembimbing" /></span>
					
						<span class="property-value" aria-labelledby="metodePemilihanPembimbing-label"><g:fieldValue bean="${profilKeminatanMahasiswaInstance}" field="metodePemilihanPembimbing"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profilKeminatanMahasiswaInstance?.dosenPembimbing}">
				<li class="fieldcontain">
					<span id="dosenPembimbing-label" class="property-label"><g:message code="profilKeminatanMahasiswa.dosenPembimbing.label" default="Dosen Pembimbing" /></span>
					
						<span class="property-value" aria-labelledby="dosenPembimbing-label">${profilKeminatanMahasiswaInstance?.dosenPembimbing?.encodeAsHTML()}</span>
					
				</li>
				</g:if>
			
				<g:if test="${profilKeminatanMahasiswaInstance?.keminatan}">
				<li class="fieldcontain">
					<span id="keminatan-label" class="property-label"><g:message code="profilKeminatanMahasiswa.keminatan.label" default="Keminatan" /></span>
					
						<span class="property-value" aria-labelledby="keminatan-label"><g:fieldValue bean="${profilKeminatanMahasiswaInstance}" field="keminatan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profilKeminatanMahasiswaInstance?.sksPeroleh}">
				<li class="fieldcontain">
					<span id="sksPeroleh-label" class="property-label"><g:message code="profilKeminatanMahasiswa.sksPeroleh.label" default="Sks Peroleh" /></span>
					
						<span class="property-value" aria-labelledby="sksPeroleh-label"><g:fieldValue bean="${profilKeminatanMahasiswaInstance}" field="sksPeroleh"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profilKeminatanMahasiswaInstance?.sksSemesterIni}">
				<li class="fieldcontain">
					<span id="sksSemesterIni-label" class="property-label"><g:message code="profilKeminatanMahasiswa.sksSemesterIni.label" default="Sks Semester Ini" /></span>
					
						<span class="property-value" aria-labelledby="sksSemesterIni-label"><g:fieldValue bean="${profilKeminatanMahasiswaInstance}" field="sksSemesterIni"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profilKeminatanMahasiswaInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="profilKeminatanMahasiswa.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${profilKeminatanMahasiswaInstance}" field="password"/></span>
					
				</li>
				</g:if>

				<g:if test="${profilKeminatanMahasiswaInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="profilKeminatanMahasiswa.status.label" default="Status Persetujuan" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${profilKeminatanMahasiswaInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:profilKeminatanMahasiswaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<!-- <g:link class="edit" action="edit" resource="${profilKeminatanMahasiswaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link> -->
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
