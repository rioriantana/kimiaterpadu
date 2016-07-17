<%@ page import="kimiaterpadu.MahasiswaWisuda" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'informasi.label', default: 'Informasi')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-informasi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="list-informasi" class="content scaffold-list" role="main">
			<h1>Detile Keminatan Mahasiswa Berdasarkan Tahun Akademik</h1>
			<g:form url="[resource:profilKeminatanMahasiswa, action:'rekapKeminatanMahasiswaKimiaTahunBerjalan']" >
				<fieldset class="form">
					<strong>Bulan : </strong>
					<g:render template="tanggalan"/>
					<g:submitButton name="cek" class="save" value="Buka" />
				</fieldset>
			</g:form>
			
		</div>
	</body>
</html>
