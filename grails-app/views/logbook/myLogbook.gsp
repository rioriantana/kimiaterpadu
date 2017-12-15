
<%@ page import="kimiaterpadu.Logbook" %>
<!DOCTYPE html>
<%
def user = session.user;
def role = session.role;
%>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'logbook.label', default: 'Logbook')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-logbook" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<g:if test="${session.role == 'MAHASISWA'}">
				<li><g:link class="create" action="create">Tambah Catatan</g:link></li>
				</g:if>
				<g:if test="${session.role == 'KOMISI SKRIPSI'}">
				<g:if test="${skripsi.status != 'LULUS'}">
						<li><g:link class="create" controller="pendaftaranSkripsi" action="luluskan" id="${skripsi.id}">Luluskan Mahasiswa</g:link></li>
				</g:if>
				<g:if test="${skripsi.status != 'GHOST'}">
						<li><g:link class="create" controller="pendaftaranSkripsi" action="ghost" id="${skripsi.id}">Buat Ghost</g:link></li>
				</g:if>
				</g:if>
			</ul>
		</div>
		<div id="list-logbook" class="content scaffold-list" role="main">
			<h1>My Logbook</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="logbook.namaNIM.label" default="Nama NIM" /></th>
					
						<g:sortableColumn property="tanggal" title="${message(code: 'logbook.tanggal.label', default: 'Tanggal')}" />
					
						<g:sortableColumn property="kegiatan" title="${message(code: 'logbook.kegiatan.label', default: 'Kegiatan')}" />
					
						<g:sortableColumn property="kemajuan" title="${message(code: 'logbook.kemajuan.label', default: 'Kemajuan')}" />
					
						<g:sortableColumn property="kendala" title="${message(code: 'logbook.kendala.label', default: 'Kendala')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${logbookInstanceList}" status="i" var="logbookInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>
							<g:if test="${session.role == 'MAHASISWA'}">
						<g:link action="show" id="${logbookInstance.id}">${fieldValue(bean: logbookInstance, field: "namaNIM")}</g:link>
						</g:if><g:else>
							${fieldValue(bean: logbookInstance, field: "namaNIM")}
						</g:else>
						</td>
					
						<td><g:formatDate date="${logbookInstance.tanggal}" /></td>
					
						<td>${fieldValue(bean: logbookInstance, field: "kegiatan")}</td>
					
						<td>${fieldValue(bean: logbookInstance, field: "kemajuan")}</td>
					
						<td>${fieldValue(bean: logbookInstance, field: "kendala")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${logbookInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
