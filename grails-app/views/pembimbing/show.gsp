
<%@ page import="kimiaterpadu.Pembimbing" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pembimbing.label', default: 'Pembimbing')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pembimbing" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pembimbing" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pembimbing">
			
				<g:if test="${pembimbingInstance?.nidn}">
				<li class="fieldcontain">
					<span id="nidn-label" class="property-label"><g:message code="pembimbing.nidn.label" default="Nidn" /></span>
					
						<span class="property-value" aria-labelledby="nidn-label"><g:fieldValue bean="${pembimbingInstance}" field="nidn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pembimbingInstance?.nip}">
				<li class="fieldcontain">
					<span id="nip-label" class="property-label"><g:message code="pembimbing.nip.label" default="Nip" /></span>
					
						<span class="property-value" aria-labelledby="nip-label"><g:fieldValue bean="${pembimbingInstance}" field="nip"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pembimbingInstance?.nama}">
				<li class="fieldcontain">
					<span id="nama-label" class="property-label"><g:message code="pembimbing.nama.label" default="Nama" /></span>
					
						<span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${pembimbingInstance}" field="nama"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pembimbingInstance?.kuota}">
				<li class="fieldcontain">
					<span id="kuota-label" class="property-label"><g:message code="pembimbing.kuota.label" default="Kuota" /></span>
					
						<span class="property-value" aria-labelledby="kuota-label"><g:fieldValue bean="${pembimbingInstance}" field="kuota"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pembimbingInstance?.kodeAkses}">
				<li class="fieldcontain">
					<span id="kodeAkses-label" class="property-label"><g:message code="pembimbing.kodeAkses.label" default="Kode Akses" /></span>
					
						<span class="property-value" aria-labelledby="kodeAkses-label"><g:fieldValue bean="${pembimbingInstance}" field="kodeAkses"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pembimbingInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="pembimbing.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${pembimbingInstance}" field="role"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pembimbingInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="pembimbing.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${pembimbingInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pembimbingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pembimbingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
