
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
				<g:if test="${session.role != 'MAHASISWA' && session.role != 'DOSEN'}">
				<li><g:link action="index" params="[filter: 'all']">All</g:link></li>
				<li><g:link action="index" params="[filter: 'skripsi']">Skripsi</g:link></li>
				<li><g:link action="index" params="[filter: 'lulus']">Lulus</g:link></li>
				<li><g:link action="index" params="[filter: 'ghost']">Ghost</g:link></li>
				</g:if>
			</ul>
		</div>
		<div id="list-pendaftaranSkripsi" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="pendaftaranSkripsi.namaNIM.label" default="Nama NIM" /></th>
					
						<th><g:message code="pendaftaranSkripsi.pembimbing1.label" default="Pembimbing1" /></th>
					
						<th><g:message code="pendaftaranSkripsi.pembimbing2.label" default="Pembimbing2" /></th>
					
						<g:sortableColumn property="judulSkripsi" title="${message(code: 'pendaftaranSkripsi.judulSkripsi.label', default: 'Judul Skripsi')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'pendaftaranSkripsi.status.label', default: 'Status')}" />

						<g:if test="${session.role != 'MAHASISWA'}">
						<g:sortableColumn property="email" title="${message(code: 'profilKeminatanMahasiswa.email.label', default: 'Action')}" />
						</g:if>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pendaftaranSkripsiInstanceList}" status="i" var="pendaftaranSkripsiInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pendaftaranSkripsiInstance.id}"> ${fieldValue(bean: pendaftaranSkripsiInstance, field: "namaNIM")}</g:link></td>
					
						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "pembimbing1")}</td>
					
						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "pembimbing2")}</td>
					
						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "judulSkripsi")}</td>
					
						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "status")}</td>
						
						<g:if test="${session.role != 'MAHASISWA'}">
						<td>
						<g:if test="${!pendaftaranSkripsiInstance.status}">
						<g:link action="setujui" id="${pendaftaranSkripsiInstance.id}">Setujui</g:link> <br> 
						<g:if test="${session.role == 'KOMISI SKRIPSI'}"> <g:link action="edit" id="${pendaftaranSkripsiInstance.id}">Edit</g:link>  <br> 
						</g:if>
						</g:if><g:link controller="logbook" action="myLogbook" id="${pendaftaranSkripsiInstance.namaNIM.id}">Lihat Logbook</g:link>
						</td>
						</g:if>
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
