<%@ page import="org.grails.plugins.google.visualization.formatter.BarFormatter" %>
<!DOCTYPE html>
<%
def user = session.user;
	def role = session.role;
	def seting = grailsApplication.mainContext.getBean("setingService"); 
	def keminatan = seting.keminatan();
%>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Kimia Terpadu</title>
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>	
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1>Main Menu:</h1>
			
				<ul>
				<g:if test="${!user}">
				<li><g:link controller="mahasiswa" action="create" class="list" > Isi Biodata Mahasiswa Baru</g:link></li>
				<g:if test="${keminatan == '0'}">
				<li><g:link controller="profilKeminatanMahasiswa" class="list" action="create" >
				Pendaftaran Keminatan (untuk mahasiswa >= 110 SKS )</g:link></li>
				</g:if>
				<li><g:link controller="rekap" action="kuotaDosen" class="list" >Cek Kuota Bimbingan Dosen</g:link></li>
				 <li><g:link controller="user" action="login" class="list" >Login</g:link></li> 
				</g:if>
				<g:else>
				<g:if test="${role == 'MAHASISWA'}">
					<li><g:link controller="profilKeminatanMahasiswa" action="profil" id="${session.user}" class="list" >Lihat Profil Keminatan</g:link></li>
					<li><g:link controller="pendaftaranSkripsi" action="profil" id="${session.user}" class="list" >Skripsi</g:link></li>
					<li><g:link controller="mahasiswaWisuda" action="create" id="${session.user}" class="list" >Isi Biodata Mahasiswa Wisuda</g:link></li>
				</g:if>
				<g:elseif test="${role == 'DOSEN'}">
					<li><g:link controller="profilKeminatanMahasiswa" action="index" id="${session.user}" class="list" >Keminatan Mahasiswa</g:link></li>
					<li><g:link controller="pendaftaranSkripsi" action="index" id="${session.user}" class="list" >Skripsi Mahasiswa</g:link></li>
				</g:elseif>
				<g:elseif test="${role == 'KOMISI SKRIPSI'}">
					<li><g:link controller="profilKeminatanMahasiswa" action="index" id="${session.user}" class="list" >Keminatan Mahasiswa</g:link></li>
					<li><g:link controller="pendaftaranSkripsi" action="index" class="list" >Pendaftaran Skripsi</g:link></li>
					<g:if test="${keminatan == '0'}">
					<li><g:link controller="pengaturan" action="keminatan" class="list" >Tutup Pendaftaran Keminatan</g:link></li></g:if>
					<g:if test="${keminatan == '1'}">
						<li><g:link controller="pengaturan" action="keminatan" class="list" >Buka Pendaftaran Keminatan</g:link></li>
						</g:if>
						<li><g:link controller="pembimbing" action="index" class="list" >Kuota Dosen</g:link></li>
					<li><g:link controller="rekap" action="index" class="list" >Rekap Laporan</g:link></li>
				</g:elseif>
				<g:elseif test="${role == 'KAPRODI'}">
					<li><g:link controller="profilKeminatanMahasiswa" action="index" id="${session.user}" class="list" >Keminatan Mahasiswa</g:link></li>
					<li><g:link controller="pendaftaranSkripsi" action="index" class="list" >Pendaftaran Skripsi</g:link></li>
					<li><g:link controller="rekap" action="index" class="list" >Rekap Laporan</g:link></li>
				</g:elseif>
				<g:elseif test="${role == 'ADMIN'}">
					<li><g:link controller="mahasiswa" action="index" class="list" >Data Mahasiswa</g:link></li>
					<li><g:link controller="mahasiswaWisuda" action="index" class="list" >Data Mahasiswa Wisuda</g:link></li>
					<li><g:link controller="profilKeminatanMahasiswa" action="index" id="${session.user}" class="list" >Keminatan Mahasiswa</g:link></li>
					<li><g:link controller="pendaftaranSkripsi" action="index" class="list" >Pendaftaran Skripsi</g:link></li>
					<li><g:link controller="rekap" action="index" class="list" >Rekap Laporan</g:link></li>
				</g:elseif>
				<li><g:link controller="user" action="logout" class="list" >Logout</g:link></li>
				</g:else>
				</ul>
			
		</div>
		<div id="page-body" role="main">
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<h1>Selamat Datang di Sistem Informasi Kimia Terpadu</h1>
			<p>SIMADU (Sistem Informasi Kimia Terpadu) sengaja dirancang untuk menghimpun data diri, status keminatan, dan monitoring skripsi mahasiswa Program Studi Kimia FMIPA UNS. </p>
<div id="barchart">

			<div id="controller-list" role="navigation">
			
					<%

		def defineDataTypeOfVariables = [['string', 'Task'], ['number', 'Pengabdian Masyarakat'], ['number', 'Jurnal'], ['number', 'Penelitian'], ['number', 'Prosiding']]
		def salesExpenses = [ ['2012', '100', '60', '200', '65'],['2013', '80', '50', '85', '59'],['2014', '125', '90', '112', '91'],['2015', '155', '120', '130', '95']]
		def judulJurnal = [['string', 'Task'], ['number', 'Persentase']]
		def dataDosenJurnal = [['Iwan Yahya', 30],['Nuryani', 24],['Suparmi',15],['Ahmad Marzuki', 21]]
       
%>
<gvisualization:columnCoreChart elementId="barchart"   hAxis= "${new Expando([slantedTextAngle:'180',textStyle:new Expando(color:'black', fontName:'Arial', fontSize:14)])}"  bar= "${new Expando(groupWidth:'40%')}" chartArea="${new Expando(top:70, width:'100%' , height:'60%', left:50,bottom:150)}" title="Penelitian dan Karya Ilmiah Prodi Kimia"  titleTextStyle="${ new Expando([color:'black', fontName:'Arial', fontSize:14])}" width="${700}" height="${400}" columns="${defineDataTypeOfVariables}" data="${salesExpenses}" />
			</div>
			</div>
		</div>
	</body>
</html>
