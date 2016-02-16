<%@ page import="kimiaterpadu.Mahasiswa" %>



<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'nim', 'error')} ">
	<label for="nim">
		<g:message code="mahasiswa.nim.label" default="Nim" />
		
	</label>
	<g:textField name="nim" value="${mahasiswaInstance?.nim}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'nama', 'error')} ">
	<label for="nama">
		<g:message code="mahasiswa.nama.label" default="Nama" />
		
	</label>
	<g:textField name="nama" value="${mahasiswaInstance?.nama}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'ttl', 'error')} ">
	<label for="ttl">
		<g:message code="mahasiswa.ttl.label" default="Tempat tanggal Lahir" />
		
	</label>
	<g:textField name="ttl" value="${mahasiswaInstance?.ttl}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'agama', 'error')} ">
	<label for="agama">
		<g:message code="mahasiswa.agama.label" default="Agama" />
		
	</label>
	<g:textField name="agama" value="${mahasiswaInstance?.agama}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'jenisKelamin', 'error')} ">
	<label for="jenisKelamin">
		<g:message code="mahasiswa.jenisKelamin.label" default="Jenis Kelamin" />
		
	</label>
	<g:select name="jenisKelamin" from="${mahasiswaInstance.constraints.jenisKelamin.inList}" value="${mahasiswaInstance?.jenisKelamin}" valueMessagePrefix="mahasiswa.jenisKelamin" />

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'alamatAsal', 'error')} ">
	<label for="alamatAsal">
		<g:message code="mahasiswa.alamatAsal.label" default="Alamat Asal" />
		
	</label>
	<g:textField name="alamatAsal" value="${mahasiswaInstance?.alamatAsal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'telepon', 'error')} ">
	<label for="telepon">
		<g:message code="mahasiswa.telepon.label" default="Telepon" />
		
	</label>
	<g:textField name="telepon" value="${mahasiswaInstance?.telepon}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'kodePos', 'error')} ">
	<label for="kodePos">
		<g:message code="mahasiswa.kodePos.label" default="Kode Pos" />
		
	</label>
	<g:textField name="kodePos" value="${mahasiswaInstance?.kodePos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'alamatSolo', 'error')} ">
	<label for="alamatSolo">
		<g:message code="mahasiswa.alamatSolo.label" default="Alamat Solo" />
		
	</label>
	<g:textField name="alamatSolo" value="${mahasiswaInstance?.alamatSolo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'teleponSolo', 'error')} ">
	<label for="teleponSolo">
		<g:message code="mahasiswa.teleponSolo.label" default="Telepon Solo" />
		
	</label>
	<g:textField name="teleponSolo" value="${mahasiswaInstance?.teleponSolo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'nomotHP', 'error')} ">
	<label for="nomotHP">
		<g:message code="mahasiswa.nomotHP.label" default="Nomot HP" />
		
	</label>
	<g:textField name="nomotHP" value="${mahasiswaInstance?.nomotHP}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'jumlahSaudara', 'error')} ">
	<label for="jumlahSaudara">
		<g:message code="mahasiswa.jumlahSaudara.label" default="Jumlah Saudara" />
		
	</label>
	<g:textField name="jumlahSaudara" value="${mahasiswaInstance?.jumlahSaudara}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'anakKe', 'error')} ">
	<label for="anakKe">
		<g:message code="mahasiswa.anakKe.label" default="Anak Ke" />
		
	</label>
	<g:textField name="anakKe" value="${mahasiswaInstance?.anakKe}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'namaOrangTua', 'error')} ">
	<label for="namaOrangTua">
		<g:message code="mahasiswa.namaOrangTua.label" default="Nama Orang Tua" />
		
	</label>
	<g:textField name="namaOrangTua" value="${mahasiswaInstance?.namaOrangTua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'alamatOrangTua', 'error')} ">
	<label for="alamatOrangTua">
		<g:message code="mahasiswa.alamatOrangTua.label" default="Alamat Orang Tua" />
		
	</label>
	<g:textField name="alamatOrangTua" value="${mahasiswaInstance?.alamatOrangTua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'teleponOrangTua', 'error')} ">
	<label for="teleponOrangTua">
		<g:message code="mahasiswa.teleponOrangTua.label" default="Telepon Orang Tua" />
		
	</label>
	<g:textField name="teleponOrangTua" value="${mahasiswaInstance?.teleponOrangTua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'kodePosOrangTua', 'error')} ">
	<label for="kodePosOrangTua">
		<g:message code="mahasiswa.kodePosOrangTua.label" default="Kode Pos Orang Tua" />
		
	</label>
	<g:textField name="kodePosOrangTua" value="${mahasiswaInstance?.kodePosOrangTua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'pekerjaanOrangTua', 'error')} ">
	<label for="pekerjaanOrangTua">
		<g:message code="mahasiswa.pekerjaanOrangTua.label" default="Pekerjaan Orang Tua" />
		
	</label>
	<g:textField name="pekerjaanOrangTua" value="${mahasiswaInstance?.pekerjaanOrangTua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'alamatKantor', 'error')} ">
	<label for="alamatKantor">
		<g:message code="mahasiswa.alamatKantor.label" default="Alamat Kantor" />
		
	</label>
	<g:textField name="alamatKantor" value="${mahasiswaInstance?.alamatKantor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'asalSekolah', 'error')} ">
	<label for="asalSekolah">
		<g:message code="mahasiswa.asalSekolah.label" default="Asal Sekolah" />
		
	</label>
	<g:textField name="asalSekolah" value="${mahasiswaInstance?.asalSekolah}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'propinsiAsalSekolah', 'error')} ">
	<label for="propinsiAsalSekolah">
		<g:message code="mahasiswa.propinsiAsalSekolah.label" default="Propinsi Asal Sekolah" />
		
	</label>
	<g:select name="propinsiAsalSekolah" from="${mahasiswaInstance.constraints.propinsiAsalSekolah.inList}" value="${mahasiswaInstance?.propinsiAsalSekolah}" valueMessagePrefix="mahasiswa.propinsiAsalSekolah" />

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'jalurMasuk', 'error')} ">
	<label for="jalurMasuk">
		<g:message code="mahasiswa.jalurMasuk.label" default="Jalur Masuk" />
		
	</label>
	<g:select name="jalurMasuk" from="${mahasiswaInstance.constraints.jalurMasuk.inList}" value="${mahasiswaInstance?.jalurMasuk}" valueMessagePrefix="mahasiswa.jalurMasuk" />

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'nilaiMatematika', 'error')} ">
	<label for="nilaiMatematika">
		<g:message code="mahasiswa.nilaiMatematika.label" default="Nilai Matematika" />
		
	</label>
	<g:textField name="nilaiMatematika" value="${mahasiswaInstance?.nilaiMatematika}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'nilaiKimia', 'error')} ">
	<label for="nilaiKimia">
		<g:message code="mahasiswa.nilaiKimia.label" default="Nilai Kimia" />
		
	</label>
	<g:textField name="nilaiKimia" value="${mahasiswaInstance?.nilaiKimia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'nilaiFisika', 'error')} ">
	<label for="nilaiFisika">
		<g:message code="mahasiswa.nilaiFisika.label" default="Nilai Fisika" />
		
	</label>
	<g:textField name="nilaiFisika" value="${mahasiswaInstance?.nilaiFisika}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'nilaiBahasaIndonesia', 'error')} ">
	<label for="nilaiBahasaIndonesia">
		<g:message code="mahasiswa.nilaiBahasaIndonesia.label" default="Nilai Bahasa Indonesia" />
		
	</label>
	<g:textField name="nilaiBahasaIndonesia" value="${mahasiswaInstance?.nilaiBahasaIndonesia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'nilaiBahasaInggris', 'error')} ">
	<label for="nilaiBahasaInggris">
		<g:message code="mahasiswa.nilaiBahasaInggris.label" default="Nilai Bahasa Inggris" />
		
	</label>
	<g:textField name="nilaiBahasaInggris" value="${mahasiswaInstance?.nilaiBahasaInggris}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'nilaiPKN', 'error')} ">
	<label for="nilaiPKN">
		<g:message code="mahasiswa.nilaiPKN.label" default="Nilai PKN" />
		
	</label>
	<g:textField name="nilaiPKN" value="${mahasiswaInstance?.nilaiPKN}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'tinggiBadan', 'error')} ">
	<label for="tinggiBadan">
		<g:message code="mahasiswa.tinggiBadan.label" default="Tinggi Badan" />
		
	</label>
	<g:textField name="tinggiBadan" value="${mahasiswaInstance?.tinggiBadan}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'beratBadan', 'error')} ">
	<label for="beratBadan">
		<g:message code="mahasiswa.beratBadan.label" default="Berat Badan" />
		
	</label>
	<g:textField name="beratBadan" value="${mahasiswaInstance?.beratBadan}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaInstance, field: 'golonganDarah', 'error')} ">
	<label for="golonganDarah">
		<g:message code="mahasiswa.golonganDarah.label" default="Golongan Darah" />
		
	</label>
	<g:textField name="golonganDarah" value="${mahasiswaInstance?.golonganDarah}"/>

</div>

