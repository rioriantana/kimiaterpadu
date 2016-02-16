
<%@ page import="kimiaterpadu.MahasiswaWisuda" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mahasiswaWisuda.label', default: 'MahasiswaWisuda')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mahasiswaWisuda" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="print" id="${mahasiswaWisudaInstance?.id}">Cetak Bukti Input</g:link></li>
			</ul>
		</div>
		<div id="show-mahasiswaWisuda" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mahasiswaWisuda">
			
				<g:if test="${mahasiswaWisudaInstance?.nim}">
				<li class="fieldcontain">
					<span id="nim-label" class="property-label"><g:message code="mahasiswaWisuda.nim.label" default="Nim" /></span>
					
						<span class="property-value" aria-labelledby="nim-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="nim"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.nama}">
				<li class="fieldcontain">
					<span id="nama-label" class="property-label"><g:message code="mahasiswaWisuda.nama.label" default="Nama" /></span>
					
						<span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="nama"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.tanggalMasuk}">
				<li class="fieldcontain">
					<span id="tanggalMasuk-label" class="property-label"><g:message code="mahasiswaWisuda.tanggalMasuk.label" default="Tanggal Masuk" /></span>
					
						<span class="property-value" aria-labelledby="tanggalMasuk-label"><g:formatDate format="dd-MM-yyyy" date="${mahasiswaWisudaInstance?.tanggalMasuk}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.tanggalLulus}">
				<li class="fieldcontain">
					<span id="tanggalLulus-label" class="property-label"><g:message code="mahasiswaWisuda.tanggalLulus.label" default="Tanggal Lulus" /></span>
					
						<span class="property-value" aria-labelledby="tanggalLulus-label"><g:formatDate format="dd-MM-yyyy" date="${mahasiswaWisudaInstance?.tanggalLulus}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.cuti}">
				<li class="fieldcontain">
					<span id="cuti-label" class="property-label"><g:message code="mahasiswaWisuda.cuti.label" default="Cuti" /></span>
					
						<span class="property-value" aria-labelledby="cuti-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="cuti"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.lamaStudi}">
				<li class="fieldcontain">
					<span id="lamaStudi-label" class="property-label"><g:message code="mahasiswaWisuda.lamaStudi.label" default="Lama Studi" /></span>
					
						<span class="property-value" aria-labelledby="lamaStudi-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="lamaStudi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.ipk}">
				<li class="fieldcontain">
					<span id="ipk-label" class="property-label"><g:message code="mahasiswaWisuda.ipk.label" default="Ipk" /></span>
					
						<span class="property-value" aria-labelledby="ipk-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="ipk"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.predikatLulus}">
				<li class="fieldcontain">
					<span id="predikatLulus-label" class="property-label"><g:message code="mahasiswaWisuda.predikatLulus.label" default="Predikat Lulus" /></span>
					
						<span class="property-value" aria-labelledby="predikatLulus-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="predikatLulus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.pembimbing1}">
				<li class="fieldcontain">
					<span id="pembimbing1-label" class="property-label"><g:message code="mahasiswaWisuda.pembimbing1.label" default="Pembimbing1" /></span>
					
						<span class="property-value" aria-labelledby="pembimbing1-label"><g:link controller="pembimbing" action="show" id="${mahasiswaWisudaInstance?.pembimbing1?.id}">${mahasiswaWisudaInstance?.pembimbing1?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.pembimbing2}">
				<li class="fieldcontain">
					<span id="pembimbing2-label" class="property-label"><g:message code="mahasiswaWisuda.pembimbing2.label" default="Pembimbing2" /></span>
					
						<span class="property-value" aria-labelledby="pembimbing2-label"><g:link controller="pembimbing" action="show" id="${mahasiswaWisudaInstance?.pembimbing2?.id}">${mahasiswaWisudaInstance?.pembimbing2?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.judulSkripsi}">
				<li class="fieldcontain">
					<span id="judulSkripsi-label" class="property-label"><g:message code="mahasiswaWisuda.judulSkripsi.label" default="Judul Skripsi" /></span>
					
						<span class="property-value" aria-labelledby="judulSkripsi-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="judulSkripsi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.lamaSkripsi}">
				<li class="fieldcontain">
					<span id="lamaSkripsi-label" class="property-label"><g:message code="mahasiswaWisuda.lamaSkripsi.label" default="Lama Skripsi" /></span>
					
						<span class="property-value" aria-labelledby="lamaSkripsi-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="lamaSkripsi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.asalSMA}">
				<li class="fieldcontain">
					<span id="asalSMA-label" class="property-label"><g:message code="mahasiswaWisuda.asalSMA.label" default="Asal SMA" /></span>
					
						<span class="property-value" aria-labelledby="asalSMA-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="asalSMA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.tahunLulusSMA}">
				<li class="fieldcontain">
					<span id="tahunLulusSMA-label" class="property-label"><g:message code="mahasiswaWisuda.tahunLulusSMA.label" default="Tahun Lulus SMA" /></span>
					
						<span class="property-value" aria-labelledby="tahunLulusSMA-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="tahunLulusSMA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.propinsiSMA}">
				<li class="fieldcontain">
					<span id="propinsiSMA-label" class="property-label"><g:message code="mahasiswaWisuda.propinsiSMA.label" default="Propinsi SMA" /></span>
					
						<span class="property-value" aria-labelledby="propinsiSMA-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="propinsiSMA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.jenisKelamin}">
				<li class="fieldcontain">
					<span id="jenisKelamin-label" class="property-label"><g:message code="mahasiswaWisuda.jenisKelamin.label" default="Jenis Kelamin" /></span>
					
						<span class="property-value" aria-labelledby="jenisKelamin-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="jenisKelamin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.wargaNegara}">
				<li class="fieldcontain">
					<span id="wargaNegara-label" class="property-label"><g:message code="mahasiswaWisuda.wargaNegara.label" default="Warga Negara" /></span>
					
						<span class="property-value" aria-labelledby="wargaNegara-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="wargaNegara"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.tempatTanggalLahir}">
				<li class="fieldcontain">
					<span id="tempatTanggalLahir-label" class="property-label"><g:message code="mahasiswaWisuda.tempatTanggalLahir.label" default="Tempat Tanggal Lahir" /></span>
					
						<span class="property-value" aria-labelledby="tempatTanggalLahir-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="tempatTanggalLahir"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="mahasiswaWisuda.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.alamatTempatTinggal}">
				<li class="fieldcontain">
					<span id="alamatTempatTinggal-label" class="property-label"><g:message code="mahasiswaWisuda.alamatTempatTinggal.label" default="Alamat Tempat Tinggal" /></span>
					
						<span class="property-value" aria-labelledby="alamatTempatTinggal-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="alamatTempatTinggal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.telepon}">
				<li class="fieldcontain">
					<span id="telepon-label" class="property-label"><g:message code="mahasiswaWisuda.telepon.label" default="Telepon" /></span>
					
						<span class="property-value" aria-labelledby="telepon-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="telepon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.sumberBiaya}">
				<li class="fieldcontain">
					<span id="sumberBiaya-label" class="property-label"><g:message code="mahasiswaWisuda.sumberBiaya.label" default="Sumber Biaya" /></span>
					
						<span class="property-value" aria-labelledby="sumberBiaya-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="sumberBiaya"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.keteranganSumberBiaya}">
				<li class="fieldcontain">
					<span id="keteranganSumberBiaya-label" class="property-label"><g:message code="mahasiswaWisuda.keteranganSumberBiaya.label" default="Keterangan Sumber Biaya" /></span>
					
						<span class="property-value" aria-labelledby="keteranganSumberBiaya-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="keteranganSumberBiaya"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.namaOrangTua}">
				<li class="fieldcontain">
					<span id="namaOrangTua-label" class="property-label"><g:message code="mahasiswaWisuda.namaOrangTua.label" default="Nama Orang Tua" /></span>
					
						<span class="property-value" aria-labelledby="namaOrangTua-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="namaOrangTua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.pekerjaanOrangTua}">
				<li class="fieldcontain">
					<span id="pekerjaanOrangTua-label" class="property-label"><g:message code="mahasiswaWisuda.pekerjaanOrangTua.label" default="Pekerjaan Orang Tua" /></span>
					
						<span class="property-value" aria-labelledby="pekerjaanOrangTua-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="pekerjaanOrangTua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.alamatOrangTua}">
				<li class="fieldcontain">
					<span id="alamatOrangTua-label" class="property-label"><g:message code="mahasiswaWisuda.alamatOrangTua.label" default="Alamat Orang Tua" /></span>
					
						<span class="property-value" aria-labelledby="alamatOrangTua-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="alamatOrangTua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mahasiswaWisudaInstance?.avatar}">
				<li class="fieldcontain">
					<span id="avatar-label" class="property-label"><g:message code="mahasiswaWisuda.avatar.label" default="Avatar" /></span>
					
				</li>
				</g:if>

				<g:if test="${mahasiswaWisudaInstance?.avatar}">
				<li class="fieldcontain">
					<span id="avatar-label" class="property-label">Foto</span>
					
						<span class="property-value" aria-labelledby="avatar-label">
						<img class="avatar" width="100px" src="${createLink(controller:'mahasiswaWisuda', action:'avatar_image', id:mahasiswaWisudaInstance.id)}" />
						</span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:mahasiswaWisudaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${mahasiswaWisudaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
