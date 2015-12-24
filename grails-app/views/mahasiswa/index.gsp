
<%@ page import="kimiaterpadu.Mahasiswa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mahasiswa.label', default: 'Mahasiswa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mahasiswa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mahasiswa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nim" title="${message(code: 'mahasiswa.nim.label', default: 'Nim')}" />
					
						<g:sortableColumn property="nama" title="${message(code: 'mahasiswa.nama.label', default: 'Nama')}" />
					
						<g:sortableColumn property="ttl" title="${message(code: 'mahasiswa.ttl.label', default: 'Ttl')}" />
					
						<g:sortableColumn property="agama" title="${message(code: 'mahasiswa.agama.label', default: 'Agama')}" />
					
						<g:sortableColumn property="jenisKelamin" title="${message(code: 'mahasiswa.jenisKelamin.label', default: 'Jenis Kelamin')}" />
					
						<g:sortableColumn property="alamatAsal" title="${message(code: 'mahasiswa.alamatAsal.label', default: 'Alamat Asal')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mahasiswaInstanceList}" status="i" var="mahasiswaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mahasiswaInstance.id}">${fieldValue(bean: mahasiswaInstance, field: "nim")}</g:link></td>
					
						<td>${fieldValue(bean: mahasiswaInstance, field: "nama")}</td>
					
						<td>${fieldValue(bean: mahasiswaInstance, field: "ttl")}</td>
					
						<td>${fieldValue(bean: mahasiswaInstance, field: "agama")}</td>
					
						<td>${fieldValue(bean: mahasiswaInstance, field: "jenisKelamin")}</td>
					
						<td>${fieldValue(bean: mahasiswaInstance, field: "alamatAsal")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mahasiswaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
