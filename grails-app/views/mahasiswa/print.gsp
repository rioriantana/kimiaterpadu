<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Cetak Bukti</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style  type="text/css">
    @page {
        size: A4 portrait;
        @top-center {
            content: element(header);
        }
    }
    .sejajar{position: absolute; left: 10px;	}
    .kop1{
    	font-size: 16px;
    	font-weight: bold;
    	left: 150px;
    	top : 35px;
    }
    .foto{
    	position: static;
    }
    .kop2{
    	font-size: 16px;
    	font-weight: bold;
    	left: 150px;
    	top : 56px;
    }
    .kop3{
    	font-size: 16px;
    	font-weight: bold;
    	left: 150px;
    	top : 75px;
    }
    .logo{
    	top: 20px;
    	left: 20px;
    }
    table {
        border-collapse:collapse;
        border:0px solid #000000;
        font-size: 14px;
        margin-top: 150px;
        margin-left: 20px;
        margin-right: 20px;
    }
    .title{
    	font-weight: bold;
    }
    table td {
        border-bottom:1px solid #000000;
        border-bottom-style: dashed;
        padding: 2px;
    }
    td.center {
        text-align: center;
    }

</style>
<script type="text/javascript">
	window.print();
</script>
</head>
<body>
<div class="sejajar kop1">DATA DIRI MAHASISWA BARU PROGRAM STUDI KIMIA</div>
<div class="sejajar kop2">FAKULTAS MATEMATIKA DAN ILMU PENGETAHUAN ALAM</div>
<div class="sejajar kop3">UNIVERSITAS SEBELAS MARET SURAKARTA</div>
<div class="sejajar logo"><img src="${resource(dir: 'images', file: 'logo-uns.png')}" width="90" /></div>

<table width="95%" align="center">
			
				
				<tr>
					<td width="30%" class="title"><span id="nim-label" class="property-label"><g:message code="mahasiswa.nim.label" default="Nim" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="nim-label"><g:fieldValue bean="${mahasiswaInstance}" field="nim"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="nama-label" class="property-label"><g:message code="mahasiswa.nama.label" default="Nama" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${mahasiswaInstance}" field="nama"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="ttl-label" class="property-label"><g:message code="mahasiswa.ttl.label" default="Ttl" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="ttl-label"><g:fieldValue bean="${mahasiswaInstance}" field="ttl"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="agama-label" class="property-label"><g:message code="mahasiswa.agama.label" default="Agama" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="agama-label"><g:fieldValue bean="${mahasiswaInstance}" field="agama"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="jenisKelamin-label" class="property-label"><g:message code="mahasiswa.jenisKelamin.label" default="Jenis Kelamin" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="jenisKelamin-label"><g:fieldValue bean="${mahasiswaInstance}" field="jenisKelamin"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="alamatAsal-label" class="property-label"><g:message code="mahasiswa.alamatAsal.label" default="Alamat Asal" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="alamatAsal-label"><g:fieldValue bean="${mahasiswaInstance}" field="alamatAsal"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="telepon-label" class="property-label"><g:message code="mahasiswa.telepon.label" default="Telepon" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="telepon-label"><g:fieldValue bean="${mahasiswaInstance}" field="telepon"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="kodePos-label" class="property-label"><g:message code="mahasiswa.kodePos.label" default="Kode Pos" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="kodePos-label"><g:fieldValue bean="${mahasiswaInstance}" field="kodePos"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="alamatSolo-label" class="property-label"><g:message code="mahasiswa.alamatSolo.label" default="Alamat Solo" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="alamatSolo-label"><g:fieldValue bean="${mahasiswaInstance}" field="alamatSolo"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="teleponSolo-label" class="property-label"><g:message code="mahasiswa.teleponSolo.label" default="Telepon Solo" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="teleponSolo-label"><g:fieldValue bean="${mahasiswaInstance}" field="teleponSolo"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="nomotHP-label" class="property-label"><g:message code="mahasiswa.nomotHP.label" default="Nomot HP" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="nomotHP-label"><g:fieldValue bean="${mahasiswaInstance}" field="nomotHP"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="jumlahSaudara-label" class="property-label"><g:message code="mahasiswa.jumlahSaudara.label" default="Jumlah Saudara" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="jumlahSaudara-label"><g:fieldValue bean="${mahasiswaInstance}" field="jumlahSaudara"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="anakKe-label" class="property-label"><g:message code="mahasiswa.anakKe.label" default="Anak Ke" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="anakKe-label"><g:fieldValue bean="${mahasiswaInstance}" field="anakKe"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="namaOrangTua-label" class="property-label"><g:message code="mahasiswa.namaOrangTua.label" default="Nama Orang Tua" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="namaOrangTua-label"><g:fieldValue bean="${mahasiswaInstance}" field="namaOrangTua"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="alamatOrangTua-label" class="property-label"><g:message code="mahasiswa.alamatOrangTua.label" default="Alamat Orang Tua" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="alamatOrangTua-label"><g:fieldValue bean="${mahasiswaInstance}" field="alamatOrangTua"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="teleponOrangTua-label" class="property-label"><g:message code="mahasiswa.teleponOrangTua.label" default="Telepon Orang Tua" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="teleponOrangTua-label"><g:fieldValue bean="${mahasiswaInstance}" field="teleponOrangTua"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="kodePosOrangTua-label" class="property-label"><g:message code="mahasiswa.kodePosOrangTua.label" default="Kode Pos Orang Tua" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="kodePosOrangTua-label"><g:fieldValue bean="${mahasiswaInstance}" field="kodePosOrangTua"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="pekerjaanOrangTua-label" class="property-label"><g:message code="mahasiswa.pekerjaanOrangTua.label" default="Pekerjaan Orang Tua" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="pekerjaanOrangTua-label"><g:fieldValue bean="${mahasiswaInstance}" field="pekerjaanOrangTua"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="alamatKantor-label" class="property-label"><g:message code="mahasiswa.alamatKantor.label" default="Alamat Kantor" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="alamatKantor-label"><g:fieldValue bean="${mahasiswaInstance}" field="alamatKantor"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="asalSekolah-label" class="property-label"><g:message code="mahasiswa.asalSekolah.label" default="Asal Sekolah" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="asalSekolah-label"><g:fieldValue bean="${mahasiswaInstance}" field="asalSekolah"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="propinsiAsalSekolah-label" class="property-label"><g:message code="mahasiswa.propinsiAsalSekolah.label" default="Propinsi Asal Sekolah" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="propinsiAsalSekolah-label"><g:fieldValue bean="${mahasiswaInstance}" field="propinsiAsalSekolah"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="jalurMasuk-label" class="property-label"><g:message code="mahasiswa.jalurMasuk.label" default="Jalur Masuk" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="jalurMasuk-label"><g:fieldValue bean="${mahasiswaInstance}" field="jalurMasuk"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="nilaiMatematika-label" class="property-label"><g:message code="mahasiswa.nilaiMatematika.label" default="Nilai Matematika" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="nilaiMatematika-label"><g:fieldValue bean="${mahasiswaInstance}" field="nilaiMatematika"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="nilaiKimia-label" class="property-label"><g:message code="mahasiswa.nilaiKimia.label" default="Nilai Kimia" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="nilaiKimia-label"><g:fieldValue bean="${mahasiswaInstance}" field="nilaiKimia"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="nilaiFisika-label" class="property-label"><g:message code="mahasiswa.nilaiFisika.label" default="Nilai Fisika" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="nilaiFisika-label"><g:fieldValue bean="${mahasiswaInstance}" field="nilaiFisika"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="nilaiBahasaIndonesia-label" class="property-label"><g:message code="mahasiswa.nilaiBahasaIndonesia.label" default="Nilai Bahasa Indonesia" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="nilaiBahasaIndonesia-label"><g:fieldValue bean="${mahasiswaInstance}" field="nilaiBahasaIndonesia"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="nilaiBahasaInggris-label" class="property-label"><g:message code="mahasiswa.nilaiBahasaInggris.label" default="Nilai Bahasa Inggris" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="nilaiBahasaInggris-label"><g:fieldValue bean="${mahasiswaInstance}" field="nilaiBahasaInggris"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="nilaiPKN-label" class="property-label"><g:message code="mahasiswa.nilaiPKN.label" default="Nilai PKN" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="nilaiPKN-label"><g:fieldValue bean="${mahasiswaInstance}" field="nilaiPKN"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="tinggiBadan-label" class="property-label"><g:message code="mahasiswa.tinggiBadan.label" default="Tinggi Badan" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="tinggiBadan-label"><g:fieldValue bean="${mahasiswaInstance}" field="tinggiBadan"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="beratBadan-label" class="property-label"><g:message code="mahasiswa.beratBadan.label" default="Berat Badan" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="beratBadan-label"><g:fieldValue bean="${mahasiswaInstance}" field="beratBadan"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="golonganDarah-label" class="property-label"><g:message code="mahasiswa.golonganDarah.label" default="Golongan Darah" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="golonganDarah-label"><g:fieldValue bean="${mahasiswaInstance}" field="golonganDarah"/></span></td>
					
				</tr>
				
			
		
			</table>
</body>
</html>