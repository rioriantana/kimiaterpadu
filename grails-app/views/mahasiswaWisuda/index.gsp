
<%@ page import="kimiaterpadu.MahasiswaWisuda" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mahasiswaWisuda.label', default: 'MahasiswaWisuda')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mahasiswaWisuda" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mahasiswaWisuda" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nim" title="${message(code: 'mahasiswaWisuda.nim.label', default: 'Nim')}" />
					
						<g:sortableColumn property="nama" title="${message(code: 'mahasiswaWisuda.nama.label', default: 'Nama')}" />
					
						<g:sortableColumn property="tanggalMasuk" title="${message(code: 'mahasiswaWisuda.tanggalMasuk.label', default: 'Tanggal Masuk')}" />
					
						<g:sortableColumn property="tanggalLulus" title="${message(code: 'mahasiswaWisuda.tanggalLulus.label', default: 'Tanggal Lulus')}" />
					
						<g:sortableColumn property="cuti" title="${message(code: 'mahasiswaWisuda.cuti.label', default: 'Cuti')}" />
					
						<g:sortableColumn property="lamaStudi" title="${message(code: 'mahasiswaWisuda.lamaStudi.label', default: 'Lama Studi')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mahasiswaWisudaInstanceList}" status="i" var="mahasiswaWisudaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mahasiswaWisudaInstance.id}">${fieldValue(bean: mahasiswaWisudaInstance, field: "nim")}</g:link></td>
					
						<td>${fieldValue(bean: mahasiswaWisudaInstance, field: "nama")}</td>
					
						<td><g:formatDate date="${mahasiswaWisudaInstance.tanggalMasuk}" /></td>
					
						<td><g:formatDate date="${mahasiswaWisudaInstance.tanggalLulus}" /></td>
					
						<td>${fieldValue(bean: mahasiswaWisudaInstance, field: "cuti")}</td>
					
						<td>${fieldValue(bean: mahasiswaWisudaInstance, field: "lamaStudi")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mahasiswaWisudaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
