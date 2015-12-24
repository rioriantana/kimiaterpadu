
<%@ page import="kimiaterpadu.PendaftaranSkripsi" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pendaftaranSkripsi.label', default: 'PendaftaranSkripsi')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pendaftaranSkripsi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pendaftaranSkripsi" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pendaftaranSkripsi">
			
				<g:if test="${pendaftaranSkripsiInstance?.nim}">
				<li class="fieldcontain">
					<span id="nim-label" class="property-label"><g:message code="pendaftaranSkripsi.nim.label" default="Nim" /></span>
					
						<span class="property-value" aria-labelledby="nim-label"><g:fieldValue bean="${pendaftaranSkripsiInstance}" field="nim"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranSkripsiInstance?.nama}">
				<li class="fieldcontain">
					<span id="nama-label" class="property-label"><g:message code="pendaftaranSkripsi.nama.label" default="Nama" /></span>
					
						<span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${pendaftaranSkripsiInstance}" field="nama"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranSkripsiInstance?.pembimbing1}">
				<li class="fieldcontain">
					<span id="pembimbing1-label" class="property-label"><g:message code="pendaftaranSkripsi.pembimbing1.label" default="Pembimbing1" /></span>
					
						<span class="property-value" aria-labelledby="pembimbing1-label"><g:link controller="pembimbing" action="show" id="${pendaftaranSkripsiInstance?.pembimbing1?.id}">${pendaftaranSkripsiInstance?.pembimbing1?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranSkripsiInstance?.pembimbing2}">
				<li class="fieldcontain">
					<span id="pembimbing2-label" class="property-label"><g:message code="pendaftaranSkripsi.pembimbing2.label" default="Pembimbing2" /></span>
					
						<span class="property-value" aria-labelledby="pembimbing2-label"><g:link controller="pembimbing" action="show" id="${pendaftaranSkripsiInstance?.pembimbing2?.id}">${pendaftaranSkripsiInstance?.pembimbing2?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranSkripsiInstance?.judulSkripsi}">
				<li class="fieldcontain">
					<span id="judulSkripsi-label" class="property-label"><g:message code="pendaftaranSkripsi.judulSkripsi.label" default="Judul Skripsi" /></span>
					
						<span class="property-value" aria-labelledby="judulSkripsi-label"><g:fieldValue bean="${pendaftaranSkripsiInstance}" field="judulSkripsi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranSkripsiInstance?.jenisKelamin}">
				<li class="fieldcontain">
					<span id="jenisKelamin-label" class="property-label"><g:message code="pendaftaranSkripsi.jenisKelamin.label" default="Jenis Kelamin" /></span>
					
						<span class="property-value" aria-labelledby="jenisKelamin-label"><g:fieldValue bean="${pendaftaranSkripsiInstance}" field="jenisKelamin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranSkripsiInstance?.tempatTanggalLahir}">
				<li class="fieldcontain">
					<span id="tempatTanggalLahir-label" class="property-label"><g:message code="pendaftaranSkripsi.tempatTanggalLahir.label" default="Tempat Tanggal Lahir" /></span>
					
						<span class="property-value" aria-labelledby="tempatTanggalLahir-label"><g:fieldValue bean="${pendaftaranSkripsiInstance}" field="tempatTanggalLahir"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranSkripsiInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="pendaftaranSkripsi.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${pendaftaranSkripsiInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranSkripsiInstance?.telepon}">
				<li class="fieldcontain">
					<span id="telepon-label" class="property-label"><g:message code="pendaftaranSkripsi.telepon.label" default="Telepon" /></span>
					
						<span class="property-value" aria-labelledby="telepon-label"><g:fieldValue bean="${pendaftaranSkripsiInstance}" field="telepon"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pendaftaranSkripsiInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pendaftaranSkripsiInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
