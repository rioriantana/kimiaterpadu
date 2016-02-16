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
<div class="sejajar kop1">DATA DIRI WISUDA PROGRAM STUDI KIMIA</div>
<div class="sejajar kop2">FAKULTAS MATEMATIKA DAN ILMU PENGETAHUAN ALAM</div>
<div class="sejajar kop3">UNIVERSITAS SEBELAS MARET SURAKARTA</div>
<div class="sejajar logo"><img src="${resource(dir: 'images', file: 'logo-uns.png')}" width="90" /></div>

<table width="95%" align="center">
			
				<tr>
					<td width="30%" class="title"><span id="nim-label" class="property-label"><g:message code="informasi.nim.label" default="NIM" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="nim-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="nim"/></span></td>
					<td rowspan="11" align="right"><div class="foto"><img class="avatar" width="150px" src="${createLink(controller:'mahasiswaWisuda', action:'avatar_image', id:mahasiswaWisudaInstance.id)}" /></div>
					</td>
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="nama-label" class="property-label"><g:message code="informasi.nama.label" default="Nama" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="nama"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="tanggalMasuk-label" class="property-label"><g:message code="informasi.tanggalMasuk.label" default="Tanggal Masuk" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="tanggalMasuk-label"><g:formatDate format="dd-MM-yyyy" date="${mahasiswaWisudaInstance?.tanggalMasuk}" /></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="tanggalLulus-label" class="property-label"><g:message code="informasi.tanggalLulus.label" default="Tanggal Lulus" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="tanggalLulus-label"><g:formatDate format="dd-MM-yyyy" date="${mahasiswaWisudaInstance?.tanggalLulus}" /></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="cuti-label" class="property-label"><g:message code="informasi.cuti.label" default="Cuti" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="cuti-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="cuti"/> Semester</span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="lamaStudi-label" class="property-label"><g:message code="informasi.lamaStudi.label" default="Lama Studi" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="lamaStudi-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="lamaStudi"/> Bulan</span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="ipk-label" class="property-label"><g:message code="informasi.ipk.label" default="IPK" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="ipk-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="ipk"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="predikatLulus-label" class="property-label"><g:message code="informasi.predikatLulus.label" default="Predikat Lulus" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="predikatLulus-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="predikatLulus"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="pembimbing1-label" class="property-label"><g:message code="informasi.pembimbing1.label" default="Pembimbing1" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="pembimbing1-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="pembimbing1"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="pembimbing2-label" class="property-label"><g:message code="informasi.pembimbing2.label" default="Pembimbing2" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="pembimbing2-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="pembimbing2"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="judulSkripsi-label" class="property-label"><g:message code="informasi.judulSkripsi.label" default="Judul Skripsi" /></span></td>
					
						<td><span class="property-value" aria-labelledby="judulSkripsi-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="judulSkripsi"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="lamaSkripsi-label" class="property-label"><g:message code="informasi.lamaSkripsi.label" default="Lama Skripsi" /></span></td>
					
						<td ><span class="property-value" aria-labelledby="lamaSkripsi-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="lamaSkripsi"/> Bulan</span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="asalSMA-label" class="property-label"><g:message code="informasi.asalSMA.label" default="Asal SMA" /></span></td>
					
						<td colspan="2"><span class="property-value" aria-labelledby="asalSMA-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="asalSMA"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="tahunLulusSMA-label" class="property-label"><g:message code="informasi.tahunLulusSMA.label" default="Tahun Lulus SMA" /></span></td>
					
						<td colspan="2"><span class="property-value" aria-labelledby="tahunLulusSMA-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="tahunLulusSMA"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="propinsiSMA-label" class="property-label"><g:message code="informasi.propinsiSMA.label" default="Propinsi SMA" /></span></td>
					
						<td colspan="2"><span class="property-value" aria-labelledby="propinsiSMA-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="propinsiSMA"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="jenisKelamin-label" class="property-label"><g:message code="informasi.jenisKelamin.label" default="Jenis Kelamin" /></span></td>
					
						<td colspan="2"><span class="property-value" aria-labelledby="jenisKelamin-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="jenisKelamin"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="wargaNegara-label" class="property-label"><g:message code="informasi.wargaNegara.label" default="Warga Negara" /></span></td>
					
						<td colspan="2"><span class="property-value" aria-labelledby="wargaNegara-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="wargaNegara"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="tempatTanggalLahir-label" class="property-label"><g:message code="informasi.tempatTanggalLahir.label" default="Tempat Tanggal Lahir" /></span></td>
					
						<td colspan="2"><span class="property-value" aria-labelledby="tempatTanggalLahir-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="tempatTanggalLahir"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="email-label" class="property-label"><g:message code="informasi.email.label" default="Email" /></span></td>
					
						<td colspan="2"><span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="email"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="alamatTempatTinggal-label" class="property-label"><g:message code="informasi.alamatTempatTinggal.label" default="Alamat Tempat Tinggal" /></span></td>
					
						<td colspan="2"><span class="property-value" aria-labelledby="alamatTempatTinggal-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="alamatTempatTinggal"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="telepon-label" class="property-label"><g:message code="informasi.telepon.label" default="Telepon" /></span></td>
					
						<td colspan="2"><span class="property-value" aria-labelledby="telepon-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="telepon"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="sumberBiaya-label" class="property-label"><g:message code="informasi.sumberBiaya.label" default="Sumber Biaya" /></span></td>
					
						<td colspan="2"><span class="property-value" aria-labelledby="sumberBiaya-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="sumberBiaya"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="keteranganSumberBiaya-label" class="property-label"><g:message code="informasi.keteranganSumberBiaya.label" default="Keterangan Sumber Biaya" /></span></td>
					
						<td colspan="2"><span class="property-value" aria-labelledby="keteranganSumberBiaya-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="keteranganSumberBiaya"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="namaOrangTua-label" class="property-label"><g:message code="informasi.namaOrangTua.label" default="Nama Orang Tua" /></span></td>
					
						<td colspan="2"><span class="property-value" aria-labelledby="namaOrangTua-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="namaOrangTua"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="pekerjaanOrangTua-label" class="property-label"><g:message code="informasi.pekerjaanOrangTua.label" default="Pekerjaan Orang Tua" /></span></td>
					
						<td colspan="2"><span class="property-value" aria-labelledby="pekerjaanOrangTua-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="pekerjaanOrangTua"/></span></td>
					
				</tr>
				
			
				
				<tr>
					<td width="30%" class="title"><span id="alamatOrangTua-label" class="property-label"><g:message code="informasi.alamatOrangTua.label" default="Alamat Orang Tua" /></span></td>
					
						<td colspan="2"><span class="property-value" aria-labelledby="alamatOrangTua-label"><g:fieldValue bean="${mahasiswaWisudaInstance}" field="alamatOrangTua"/></span></td>
					
				</tr>
				
			
			</table>
</body>
</html>