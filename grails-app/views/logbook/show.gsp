
<%@ page import="kimiaterpadu.Logbook" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'logbook.label', default: 'Logbook')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-logbook" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-logbook" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list logbook">
			
				<g:if test="${logbookInstance?.namaNIM}">
				<li class="fieldcontain">
					<span id="namaNIM-label" class="property-label"><g:message code="logbook.namaNIM.label" default="Nama NIM" /></span>
					
						<span class="property-value" aria-labelledby="namaNIM-label"><g:link controller="profilKeminatanMahasiswa" action="show" id="${logbookInstance?.namaNIM?.id}">${logbookInstance?.namaNIM?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${logbookInstance?.tanggal}">
				<li class="fieldcontain">
					<span id="tanggal-label" class="property-label"><g:message code="logbook.tanggal.label" default="Tanggal" /></span>
					
						<span class="property-value" aria-labelledby="tanggal-label"><g:formatDate date="${logbookInstance?.tanggal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${logbookInstance?.kegiatan}">
				<li class="fieldcontain">
					<span id="kegiatan-label" class="property-label"><g:message code="logbook.kegiatan.label" default="Kegiatan" /></span>
					
						<span class="property-value" aria-labelledby="kegiatan-label"><g:fieldValue bean="${logbookInstance}" field="kegiatan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${logbookInstance?.kemajuan}">
				<li class="fieldcontain">
					<span id="kemajuan-label" class="property-label"><g:message code="logbook.kemajuan.label" default="Kemajuan" /></span>
					
						<span class="property-value" aria-labelledby="kemajuan-label"><g:fieldValue bean="${logbookInstance}" field="kemajuan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${logbookInstance?.kendala}">
				<li class="fieldcontain">
					<span id="kendala-label" class="property-label"><g:message code="logbook.kendala.label" default="Kendala" /></span>
					
						<span class="property-value" aria-labelledby="kendala-label"><g:fieldValue bean="${logbookInstance}" field="kendala"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:logbookInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${logbookInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
