
<%@ page import="kimiaterpadu.PendaftaranSkripsi" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pendaftaranSkripsi.label', default: 'PendaftaranSkripsi')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pendaftaranSkripsi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pendaftaranSkripsi" class="content scaffold-list" role="main">
			<h1>Daftar Mahasiswa Peserta Skripsi</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nim" title="${message(code: 'pendaftaranSkripsi.nim.label', default: 'Nim')}" />
					
						<g:sortableColumn property="nama" title="${message(code: 'pendaftaranSkripsi.nama.label', default: 'Nama')}" />
					
						<th><g:message code="pendaftaranSkripsi.pembimbing1.label" default="Pembimbing1" /></th>
					
						<th><g:message code="pendaftaranSkripsi.pembimbing2.label" default="Pembimbing2" /></th>
					
						<g:sortableColumn property="judulSkripsi" title="${message(code: 'pendaftaranSkripsi.judulSkripsi.label', default: 'Judul Skripsi')}" />
					
						<g:sortableColumn property="jenisKelamin" title="${message(code: 'pendaftaranSkripsi.jenisKelamin.label', default: 'Jenis Kelamin')}" />

						<g:sortableColumn property="status" title="${message(code: 'pendaftaranSkripsi.status.label', default: 'Status')}" />

						<g:sortableColumn property="jenisKelamin" title="${message(code: 'pendaftaranSkripsi.jenisKelamin.label', default: 'Action')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pendaftaranSkripsiInstanceList}" status="i" var="pendaftaranSkripsiInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pendaftaranSkripsiInstance.id}">${fieldValue(bean: pendaftaranSkripsiInstance, field: "nim")}</g:link></td>
					
						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "nama")}</td>
					
						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "pembimbing1")}</td>
					
						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "pembimbing2")}</td>
					
						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "judulSkripsi")}</td>
					
						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "jenisKelamin")}</td>

						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "status")}</td>

						<td><g:if test="${pendaftaranSkripsiInstance?.status == 'Disetujui'}"><g:link action="luluskan" id="${pendaftaranSkripsiInstance.id}">Luluskan</g:link></g:if></td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pendaftaranSkripsiInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
