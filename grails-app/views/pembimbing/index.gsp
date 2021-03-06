
<%@ page import="kimiaterpadu.Pembimbing" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pembimbing.label', default: 'Pembimbing')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pembimbing" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pembimbing" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nidn" title="${message(code: 'pembimbing.nidn.label', default: 'Nidn')}" />
					
						<g:sortableColumn property="nip" title="${message(code: 'pembimbing.nip.label', default: 'Nip')}" />
					
						<g:sortableColumn property="nama" title="${message(code: 'pembimbing.nama.label', default: 'Nama')}" />
					
						<g:sortableColumn property="kuota" title="${message(code: 'pembimbing.kuota.label', default: 'Kuota Kosong')}" />
					
						<g:sortableColumn property="alamat" title="${message(code: 'pembimbing.alamat.label', default: 'Alamat')}" />
					<g:if test="${session.role == 'KOMISI SKRIPSI'}">
						<g:sortableColumn property="jenisKelamin" title="${message(code: 'pembimbing.jenisKelamin.label', default: 'Action')}" />
					</g:if>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pembimbingInstanceList}" status="i" var="pembimbingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pembimbingInstance.id}">${fieldValue(bean: pembimbingInstance, field: "nidn")}</g:link></td>
					
						<td>${fieldValue(bean: pembimbingInstance, field: "nip")}</td>
					
						<td>${fieldValue(bean: pembimbingInstance, field: "nama")}</td>
					
						<td>${fieldValue(bean: pembimbingInstance, field: "kuota")}</td>
					
						<td>${fieldValue(bean: pembimbingInstance, field: "alamat")}</td>
					<g:if test="${session.role == 'KOMISI SKRIPSI'}">
						<td><g:link controller="profilKeminatanMahasiswa" action="keminatanDosen" id="${pembimbingInstance.id}">Lihat Bimbingan Aktif</g:link></td>
					</g:if>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pembimbingInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
