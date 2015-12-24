
<%@ page import="kimiaterpadu.Mahasiswa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mahasiswa.label', default: 'Mahasiswa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mahasiswa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-mahasiswa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mahasiswa">
			
				<g:if test="${mahasiswaInstance?.nim}">
				<li class="fieldcontain">
					<span id="nim-label" class="property-label"><g:message code="mahasiswa.nim.label" default="Nim" /></span>
					
						<span class="property-value" aria-labelledby="nim-label"><g:fieldValue bean="${mahasiswaInstance}" field="nim"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.nama}">
				<li class="fieldcontain">
					<span id="nama-label" class="property-label"><g:message code="mahasiswa.nama.label" default="Nama" /></span>
					
						<span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${mahasiswaInstance}" field="nama"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.ttl}">
				<li class="fieldcontain">
					<span id="ttl-label" class="property-label"><g:message code="mahasiswa.ttl.label" default="Ttl" /></span>
					
						<span class="property-value" aria-labelledby="ttl-label"><g:fieldValue bean="${mahasiswaInstance}" field="ttl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.agama}">
				<li class="fieldcontain">
					<span id="agama-label" class="property-label"><g:message code="mahasiswa.agama.label" default="Agama" /></span>
					
						<span class="property-value" aria-labelledby="agama-label"><g:fieldValue bean="${mahasiswaInstance}" field="agama"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.jenisKelamin}">
				<li class="fieldcontain">
					<span id="jenisKelamin-label" class="property-label"><g:message code="mahasiswa.jenisKelamin.label" default="Jenis Kelamin" /></span>
					
						<span class="property-value" aria-labelledby="jenisKelamin-label"><g:fieldValue bean="${mahasiswaInstance}" field="jenisKelamin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.alamatAsal}">
				<li class="fieldcontain">
					<span id="alamatAsal-label" class="property-label"><g:message code="mahasiswa.alamatAsal.label" default="Alamat Asal" /></span>
					
						<span class="property-value" aria-labelledby="alamatAsal-label"><g:fieldValue bean="${mahasiswaInstance}" field="alamatAsal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.telepon}">
				<li class="fieldcontain">
					<span id="telepon-label" class="property-label"><g:message code="mahasiswa.telepon.label" default="Telepon" /></span>
					
						<span class="property-value" aria-labelledby="telepon-label"><g:fieldValue bean="${mahasiswaInstance}" field="telepon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.kodePos}">
				<li class="fieldcontain">
					<span id="kodePos-label" class="property-label"><g:message code="mahasiswa.kodePos.label" default="Kode Pos" /></span>
					
						<span class="property-value" aria-labelledby="kodePos-label"><g:fieldValue bean="${mahasiswaInstance}" field="kodePos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.alamatSolo}">
				<li class="fieldcontain">
					<span id="alamatSolo-label" class="property-label"><g:message code="mahasiswa.alamatSolo.label" default="Alamat Solo" /></span>
					
						<span class="property-value" aria-labelledby="alamatSolo-label"><g:fieldValue bean="${mahasiswaInstance}" field="alamatSolo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.teleponSolo}">
				<li class="fieldcontain">
					<span id="teleponSolo-label" class="property-label"><g:message code="mahasiswa.teleponSolo.label" default="Telepon Solo" /></span>
					
						<span class="property-value" aria-labelledby="teleponSolo-label"><g:fieldValue bean="${mahasiswaInstance}" field="teleponSolo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.nomotHP}">
				<li class="fieldcontain">
					<span id="nomotHP-label" class="property-label"><g:message code="mahasiswa.nomotHP.label" default="Nomot HP" /></span>
					
						<span class="property-value" aria-labelledby="nomotHP-label"><g:fieldValue bean="${mahasiswaInstance}" field="nomotHP"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.jumlahSaudara}">
				<li class="fieldcontain">
					<span id="jumlahSaudara-label" class="property-label"><g:message code="mahasiswa.jumlahSaudara.label" default="Jumlah Saudara" /></span>
					
						<span class="property-value" aria-labelledby="jumlahSaudara-label"><g:fieldValue bean="${mahasiswaInstance}" field="jumlahSaudara"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.anakKe}">
				<li class="fieldcontain">
					<span id="anakKe-label" class="property-label"><g:message code="mahasiswa.anakKe.label" default="Anak Ke" /></span>
					
						<span class="property-value" aria-labelledby="anakKe-label"><g:fieldValue bean="${mahasiswaInstance}" field="anakKe"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.namaOrangTua}">
				<li class="fieldcontain">
					<span id="namaOrangTua-label" class="property-label"><g:message code="mahasiswa.namaOrangTua.label" default="Nama Orang Tua" /></span>
					
						<span class="property-value" aria-labelledby="namaOrangTua-label"><g:fieldValue bean="${mahasiswaInstance}" field="namaOrangTua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.alamatOrangTua}">
				<li class="fieldcontain">
					<span id="alamatOrangTua-label" class="property-label"><g:message code="mahasiswa.alamatOrangTua.label" default="Alamat Orang Tua" /></span>
					
						<span class="property-value" aria-labelledby="alamatOrangTua-label"><g:fieldValue bean="${mahasiswaInstance}" field="alamatOrangTua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.teleponOrangTua}">
				<li class="fieldcontain">
					<span id="teleponOrangTua-label" class="property-label"><g:message code="mahasiswa.teleponOrangTua.label" default="Telepon Orang Tua" /></span>
					
						<span class="property-value" aria-labelledby="teleponOrangTua-label"><g:fieldValue bean="${mahasiswaInstance}" field="teleponOrangTua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.kodePosOrangTua}">
				<li class="fieldcontain">
					<span id="kodePosOrangTua-label" class="property-label"><g:message code="mahasiswa.kodePosOrangTua.label" default="Kode Pos Orang Tua" /></span>
					
						<span class="property-value" aria-labelledby="kodePosOrangTua-label"><g:fieldValue bean="${mahasiswaInstance}" field="kodePosOrangTua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.pekerjaanOrangTua}">
				<li class="fieldcontain">
					<span id="pekerjaanOrangTua-label" class="property-label"><g:message code="mahasiswa.pekerjaanOrangTua.label" default="Pekerjaan Orang Tua" /></span>
					
						<span class="property-value" aria-labelledby="pekerjaanOrangTua-label"><g:fieldValue bean="${mahasiswaInstance}" field="pekerjaanOrangTua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.alamatKantor}">
				<li class="fieldcontain">
					<span id="alamatKantor-label" class="property-label"><g:message code="mahasiswa.alamatKantor.label" default="Alamat Kantor" /></span>
					
						<span class="property-value" aria-labelledby="alamatKantor-label"><g:fieldValue bean="${mahasiswaInstance}" field="alamatKantor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.asalSekolah}">
				<li class="fieldcontain">
					<span id="asalSekolah-label" class="property-label"><g:message code="mahasiswa.asalSekolah.label" default="Asal Sekolah" /></span>
					
						<span class="property-value" aria-labelledby="asalSekolah-label"><g:fieldValue bean="${mahasiswaInstance}" field="asalSekolah"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.propinsiAsalSekolah}">
				<li class="fieldcontain">
					<span id="propinsiAsalSekolah-label" class="property-label"><g:message code="mahasiswa.propinsiAsalSekolah.label" default="Propinsi Asal Sekolah" /></span>
					
						<span class="property-value" aria-labelledby="propinsiAsalSekolah-label"><g:fieldValue bean="${mahasiswaInstance}" field="propinsiAsalSekolah"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.jalurMasuk}">
				<li class="fieldcontain">
					<span id="jalurMasuk-label" class="property-label"><g:message code="mahasiswa.jalurMasuk.label" default="Jalur Masuk" /></span>
					
						<span class="property-value" aria-labelledby="jalurMasuk-label"><g:fieldValue bean="${mahasiswaInstance}" field="jalurMasuk"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.nilaiMatematika}">
				<li class="fieldcontain">
					<span id="nilaiMatematika-label" class="property-label"><g:message code="mahasiswa.nilaiMatematika.label" default="Nilai Matematika" /></span>
					
						<span class="property-value" aria-labelledby="nilaiMatematika-label"><g:fieldValue bean="${mahasiswaInstance}" field="nilaiMatematika"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.nilaiKimia}">
				<li class="fieldcontain">
					<span id="nilaiKimia-label" class="property-label"><g:message code="mahasiswa.nilaiKimia.label" default="Nilai Kimia" /></span>
					
						<span class="property-value" aria-labelledby="nilaiKimia-label"><g:fieldValue bean="${mahasiswaInstance}" field="nilaiKimia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.nilaiFisika}">
				<li class="fieldcontain">
					<span id="nilaiFisika-label" class="property-label"><g:message code="mahasiswa.nilaiFisika.label" default="Nilai Fisika" /></span>
					
						<span class="property-value" aria-labelledby="nilaiFisika-label"><g:fieldValue bean="${mahasiswaInstance}" field="nilaiFisika"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.nilaiBahasaIndonesia}">
				<li class="fieldcontain">
					<span id="nilaiBahasaIndonesia-label" class="property-label"><g:message code="mahasiswa.nilaiBahasaIndonesia.label" default="Nilai Bahasa Indonesia" /></span>
					
						<span class="property-value" aria-labelledby="nilaiBahasaIndonesia-label"><g:fieldValue bean="${mahasiswaInstance}" field="nilaiBahasaIndonesia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.nilaiBahasaInggris}">
				<li class="fieldcontain">
					<span id="nilaiBahasaInggris-label" class="property-label"><g:message code="mahasiswa.nilaiBahasaInggris.label" default="Nilai Bahasa Inggris" /></span>
					
						<span class="property-value" aria-labelledby="nilaiBahasaInggris-label"><g:fieldValue bean="${mahasiswaInstance}" field="nilaiBahasaInggris"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.nilaiPKN}">
				<li class="fieldcontain">
					<span id="nilaiPKN-label" class="property-label"><g:message code="mahasiswa.nilaiPKN.label" default="Nilai PKN" /></span>
					
						<span class="property-value" aria-labelledby="nilaiPKN-label"><g:fieldValue bean="${mahasiswaInstance}" field="nilaiPKN"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.tinggiBadan}">
				<li class="fieldcontain">
					<span id="tinggiBadan-label" class="property-label"><g:message code="mahasiswa.tinggiBadan.label" default="Tinggi Badan" /></span>
					
						<span class="property-value" aria-labelledby="tinggiBadan-label"><g:fieldValue bean="${mahasiswaInstance}" field="tinggiBadan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.beratBadan}">
				<li class="fieldcontain">
					<span id="beratBadan-label" class="property-label"><g:message code="mahasiswa.beratBadan.label" default="Berat Badan" /></span>
					
						<span class="property-value" aria-labelledby="beratBadan-label"><g:fieldValue bean="${mahasiswaInstance}" field="beratBadan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaInstance?.golonganDarah}">
				<li class="fieldcontain">
					<span id="golonganDarah-label" class="property-label"><g:message code="mahasiswa.golonganDarah.label" default="Golongan Darah" /></span>
					
						<span class="property-value" aria-labelledby="golonganDarah-label"><g:fieldValue bean="${mahasiswaInstance}" field="golonganDarah"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:mahasiswaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${mahasiswaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
