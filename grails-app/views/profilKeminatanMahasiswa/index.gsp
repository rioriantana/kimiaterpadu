
<%@ page import="kimiaterpadu.ProfilKeminatanMahasiswa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profilKeminatanMahasiswa.label', default: 'ProfilKeminatanMahasiswa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-profilKeminatanMahasiswa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-profilKeminatanMahasiswa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nim" title="${message(code: 'profilKeminatanMahasiswa.nim.label', default: 'Nim')}" />
					
						<g:sortableColumn property="nama" title="${message(code: 'profilKeminatanMahasiswa.nama.label', default: 'Nama')}" />
					
						<g:sortableColumn property="metodePemilihanPembimbing" title="${message(code: 'profilKeminatanMahasiswa.metodePemilihanPembimbing.label', default: 'Metode Pemilihan Pembimbing')}" />
					
						<g:sortableColumn property="dosenPembimbing" title="${message(code: 'profilKeminatanMahasiswa.dosenPembimbing.label', default: 'Dosen Pembimbing')}" />
					
						<g:sortableColumn property="keminatan" title="${message(code: 'profilKeminatanMahasiswa.keminatan.label', default: 'Keminatan')}" />
						<g:if test="${session.role != 'MAHASISWA'}">
						<g:sortableColumn property="email" title="${message(code: 'profilKeminatanMahasiswa.email.label', default: 'Action')}" />
						</g:if>
					</tr>
				</thead>
				<tbody>
				<g:each in="${profilKeminatanMahasiswaInstanceList}" status="i" var="profilKeminatanMahasiswaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: profilKeminatanMahasiswaInstance, field: "nim")}</td>
					
						<td>${fieldValue(bean: profilKeminatanMahasiswaInstance, field: "nama")}</td>
					
						<td>${fieldValue(bean: profilKeminatanMahasiswaInstance, field: "metodePemilihanPembimbing")}</td>
					
						<td>${fieldValue(bean: profilKeminatanMahasiswaInstance, field: "dosenPembimbing")}</td>
					
						<td>${fieldValue(bean: profilKeminatanMahasiswaInstance, field: "keminatan")}</td>
						<g:if test="${session.role != 'MAHASISWA'}">
						<td>
						<g:if test="${!profilKeminatanMahasiswaInstance.status}">
						<g:link action="setujui" id="${profilKeminatanMahasiswaInstance.id}">Setujui</g:link>
						</g:if>
						<g:if test="${session.role == 'KOMISI SKRIPSI'}"> | <g:link action="edit" id="${profilKeminatanMahasiswaInstance.id}">Edit</g:link>
						</g:if>
						</td>
						</g:if>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${profilKeminatanMahasiswaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
