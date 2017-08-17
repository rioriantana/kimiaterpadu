<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Laporan Peserta Skripsi</title>
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
<h3><center>Data Mahasiswa Skripsi Program Studi Kimia FMIPA UNS<br>
Periode KRS Bulan <g:formatDate format="MM-yyyy" date="${tanggalAwal}"/> s/d <g:formatDate format="MM-yyyy" date="${tanggalAkhir}"/></center></h3>

<table width="100%">
    <tr>
        <td class="title">No. </td>
        <td class="title">NIM</td>
        <td  class="title">Nama</td>
        <td class="title"> Pembimbing</td>
        <td class="title"> Tanggal Semprop</td>
        <td  class="title"> Tanggal Semhas</td>
        <td class="title"> Tanggal Sidang</td>
        <td class="title"> Status</td>
    </tr>
    <g:each in="${pendaftaranSkripsiInstanceList}" status="i" var="pendaftaranSkripsi">
        <tr>
            <td>${i+1}</td>
            <td >${pendaftaranSkripsi?.namaNIM?.nim}</td>
            <td >${pendaftaranSkripsi?.namaNIM?.nama}</td>
            <td >${pendaftaranSkripsi?.pembimbing1}</td>
            <td ><g:formatDate format="dd-MM-yyyy" date="${pendaftaranSkripsi?.tanggalSeminarProposal}"/></td>
            <td ><g:formatDate format="dd-MM-yyyy" date="${pendaftaranSkripsi?.tanggalSeminarHasil}"/></td>
            <td ><g:formatDate format="dd-MM-yyyy" date="${pendaftaranSkripsi?.tanggalUjianSkripsi}"/></td>
            <td >${pendaftaranSkripsi?.status}</td>
        </tr>
    </g:each>
</table>



</body>
</html>
