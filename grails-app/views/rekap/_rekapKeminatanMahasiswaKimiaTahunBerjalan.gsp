<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Laporan Wisuda</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style  type="text/css">
    @page {
        size: A4 landscape;
        @top-center {
            content: element(header);
        }
    }
    table {
        border-collapse:collapse;
        border:1px solid #FF0000;
        font-size: 12px;
    }
    .title{
    	font-weight: bold;
    	text-align: center;
    }
    table td {
        border:1px solid #FF0000;
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
<h3><center>Data Keminatan Program Studi Kimia FMIPA UNS<br>
Periode Tahun Ajaran <g:formatDate format="yyyy" date="${tanggalAwal}"/> s/d <g:formatDate format="yyyy" date="${tanggalAkhir}"/></center></h3>

<table width="100%">
    <tr>
        <td class="title">No. </td>
        <td class="title">NIM</td>
        <td  class="title">Nama</td>
        <td class="title"> Metode Pemilihan</td>
        <td class="title"> Dosen Pembimbing</td>
        <td  class="title"> Kelompok Penelitian</td>
        <td class="title"> Status</td>
        <td class="title"> Tanggal Update</td>
    </tr>
    <g:each in="${profilKeminatanMahasiswaInstanceList}" status="i" var="profilKeminatanMahasiswa">
        <tr>
            <td>${i+1}</td>
            <td >${profilKeminatanMahasiswa?.nim}</td>
            <td class="center">${profilKeminatanMahasiswa?.nama}</td>
            <td >${profilKeminatanMahasiswa?.metodePemilihanPembimbing}</td>
            <td >${profilKeminatanMahasiswa?.dosenPembimbing}</td>
            <td class="center">${profilKeminatanMahasiswa?.keminatan}</td>
            <td >${profilKeminatanMahasiswa?.status}</td>
            <td >${profilKeminatanMahasiswa?.tanggalUpdate}</td>
        </tr>
    </g:each>
</table>



</body>
</html>
