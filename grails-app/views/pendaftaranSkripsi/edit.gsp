<%@ page import="kimiaterpadu.PendaftaranSkripsi" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pendaftaranSkripsi.label', default: 'PendaftaranSkripsi')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-pendaftaranSkripsi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<g:if test="${session.role != 'MAHASISWA' && session.role != 'DOSEN'}">
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</g:if>
			</ul>
		</div>
		<div id="edit-pendaftaranSkripsi" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${pendaftaranSkripsiInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${pendaftaranSkripsiInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>

			<div class="content scaffold-show">
			<ul class="property-list pendaftaranSkripsi">
				<li>Upload File Semprop meliputi Berkas pendaftaran skripsi, daftar hadir peserta semprop, kartu biru (minimal 5 kali semhas)  dalam bentuk PDF</li>
				<li>Upload File Semhas meliputi Berkas Pendaftaran semhas, bukti submit proposal, daftar hadir proposal, kartu biru (min 5ali semprop) dalam bentuk PDF</li>
				<li>Upload File Pendadaran meliputi Berkas Pendaftaran ujian (bukti berita acara)  dalam bentuk PDF</li>
			</ul>
			</div>

			<g:form url="[resource:pendaftaranSkripsiInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${pendaftaranSkripsiInstance?.version}" />
				<fieldset class="form">
					<g:render template="edit"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
