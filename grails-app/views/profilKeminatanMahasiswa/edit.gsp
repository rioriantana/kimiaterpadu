<%@ page import="kimiaterpadu.ProfilKeminatanMahasiswa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profilKeminatanMahasiswa.label', default: 'ProfilKeminatanMahasiswa')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-profilKeminatanMahasiswa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="edit-profilKeminatanMahasiswa" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${profilKeminatanMahasiswaInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${profilKeminatanMahasiswaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:profilKeminatanMahasiswaInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${profilKeminatanMahasiswaInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
			<g:form url="[resource:profilKeminatanMahasiswaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:if test="${role == 'KOMISI SKRIPSI'}">
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></g:if>
				</fieldset>
			</g:form>
			
		</div>
	</body>
</html>
