
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
					
						<g:sortableColumn property="email" title="${message(code: 'pendaftaranSkripsi.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="tanggalSeminarProposal" title="${message(code: 'pendaftaranSkripsi.tanggalSeminarProposal.label', default: 'Tanggal Seminar Proposal')}" />

						<g:if test="${session.role != 'MAHASISWA'}">
						<g:sortableColumn property="email" title="${message(code: 'profilKeminatanMahasiswa.email.label', default: 'Action')}" />
						</g:if>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pendaftaranSkripsiInstanceList}" status="i" var="pendaftaranSkripsiInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "namaNIM")}</td>
					
						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "pembimbing1")}</td>
					
						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "pembimbing2")}</td>
					
						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "judulSkripsi")}</td>
					
						<td>${fieldValue(bean: pendaftaranSkripsiInstance, field: "email")}</td>
					
						<td><g:formatDate date="${pendaftaranSkripsiInstance.tanggalSeminarProposal}" /></td>
						
						<g:if test="${session.role != 'MAHASISWA'}">
						<td>
						<g:if test="${!pendaftaranSkripsiInstance.status}">
						<g:link action="setujui" id="${pendaftaranSkripsiInstance.id}">Setujui</g:link>
						<g:if test="${session.role == 'KOMISI SKRIPSI'}"> | <g:link action="edit" id="${pendaftaranSkripsiInstance.id}">Edit</g:link>
						</g:if>
						</g:if>
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
