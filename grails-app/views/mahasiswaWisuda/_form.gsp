<%@ page import="kimiaterpadu.MahasiswaWisuda" %>



<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'nim', 'error')} ">
	<label for="nim">
		<g:message code="mahasiswaWisuda.nim.label" default="NIM" />
		
	</label>
	<g:textField name="nim" value="${skripsi?.namaNIM?.nim}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'nama', 'error')} ">
	<label for="nama">
		<g:message code="mahasiswaWisuda.nama.label" default="Nama" />
		
	</label>
	<g:textField name="nama" value="${skripsi?.namaNIM?.nama}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'tanggalMasuk', 'error')} ">
	<label for="tanggalMasuk">
		<g:message code="mahasiswaWisuda.tanggalMasuk.label" default="Tanggal Masuk" />
		
	</label>
	<g:datePicker name="tanggalMasuk" precision="day"  value="${mahasiswaWisudaInstance?.tanggalMasuk}" default="none" noSelection="['': '']" relativeYears="[-10..10]" default="${new Date()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'tanggalLulus', 'error')} ">
	<label for="tanggalLulus">
		<g:message code="mahasiswaWisuda.tanggalLulus.label" default="Tanggal Lulus" />
		
	</label>
	<g:datePicker name="tanggalLulus" precision="day"  value="${mahasiswaWisudaInstance?.tanggalLulus}" default="none" noSelection="['': '']" relativeYears="[-10..10]" default="${new Date()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'cuti', 'error')} ">
	<label for="cuti">
		<g:message code="mahasiswaWisuda.cuti.label" default="Cuti" />
		
	</label>
	<g:field type="number" max="10" min="0" name="cuti" value="${mahasiswaWisudaInstance?.cuti}"/> Bulan

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'ipk', 'error')} ">
	<label for="ipk">
		<g:message code="mahasiswaWisuda.ipk.label" default="IPK" />
		
	</label>
	<g:field type="number" max="4" min="0" step="0.01" name="ipk" value="${mahasiswaWisudaInstance?.ipk}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'pembimbing1', 'error')} ">
	<label for="pembimbing1">
		<g:message code="mahasiswaWisuda.pembimbing1.label" default="Pembimbing1" />
		
	</label>
	<g:select id="pembimbing1" name="pembimbing1.id" from="${kimiaterpadu.Pembimbing.findAllByRole('DOSEN')}" optionKey="id" value="${skripsi?.pembimbing1?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'pembimbing2', 'error')} ">
	<label for="pembimbing2">
		<g:message code="mahasiswaWisuda.pembimbing2.label" default="Pembimbing2" />
		
	</label>
	<g:select id="pembimbing2" name="pembimbing2.id" from="${kimiaterpadu.Pembimbing.findAllByRole('DOSEN')}" optionKey="id" value="${skripsi?.pembimbing2?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'judulSkripsi', 'error')} ">
	<label for="judulSkripsi">
		<g:message code="mahasiswaWisuda.judulSkripsi.label" default="Judul Skripsi" />
		
	</label>
	<g:textArea rows="5" cols="5" name="judulSkripsi" value="${skripsi?.judulSkripsi}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'lamaSkripsi', 'error')} ">
	<label for="lamaSkripsi">
		<g:message code="mahasiswaWisuda.lamaSkripsi.label" default="Lama Skripsi" />
		
	</label>
	<g:field type="number" name="lamaSkripsi" value="${mahasiswaWisudaInstance?.lamaSkripsi}"/> Bulan

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'asalSMA', 'error')} ">
	<label for="asalSMA">
		<g:message code="mahasiswaWisuda.asalSMA.label" default="Asal SMA" />
		
	</label>
	<g:textField name="asalSMA" value="${mahasiswaWisudaInstance?.asalSMA}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'tahunLulusSMA', 'error')} ">
	<label for="tahunLulusSMA">
		<g:message code="mahasiswaWisuda.tahunLulusSMA.label" default="Tahun Lulus SMA" />
		
	</label>
	<g:textField name="tahunLulusSMA" value="${mahasiswaWisudaInstance?.tahunLulusSMA}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'propinsiSMA', 'error')} ">
	<label for="propinsiSMA">
		<g:message code="mahasiswaWisuda.propinsiSMA.label" default="Propinsi SMA" />
		
	</label>
	<g:select name="propinsiSMA" from="${mahasiswaWisudaInstance.constraints.propinsiSMA.inList}" value="${mahasiswaWisudaInstance?.propinsiSMA}" valueMessagePrefix="mahasiswaWisuda.propinsiSMA" />

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'jenisKelamin', 'error')} ">
	<label for="jenisKelamin">
		<g:message code="mahasiswaWisuda.jenisKelamin.label" default="Jenis Kelamin" />
		
	</label>
	<g:select name="jenisKelamin" from="${mahasiswaWisudaInstance.constraints.jenisKelamin.inList}" value="${mahasiswaWisudaInstance?.jenisKelamin}" valueMessagePrefix="mahasiswaWisuda.jenisKelamin" />

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'wargaNegara', 'error')} ">
	<label for="wargaNegara">
		<g:message code="mahasiswaWisuda.wargaNegara.label" default="Warga Negara" />
		
	</label>
	<g:select name="wargaNegara" from="${mahasiswaWisudaInstance.constraints.wargaNegara.inList}" value="${mahasiswaWisudaInstance?.wargaNegara}" valueMessagePrefix="mahasiswaWisuda.wargaNegara" />

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'tempatTanggalLahir', 'error')} ">
	<label for="tempatTanggalLahir">
		<g:message code="mahasiswaWisuda.tempatTanggalLahir.label" default="Tempat Tanggal Lahir" />
		
	</label>
	<g:textField name="tempatTanggalLahir" value="${mahasiswaWisudaInstance?.tempatTanggalLahir}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="mahasiswaWisuda.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${mahasiswaWisudaInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'alamatTempatTinggal', 'error')} ">
	<label for="alamatTempatTinggal">
		<g:message code="mahasiswaWisuda.alamatTempatTinggal.label" default="Alamat Tempat Tinggal" />
		
	</label>
	<g:textArea rows="5" cols="5" name="alamatTempatTinggal" value="${mahasiswaWisudaInstance?.alamatTempatTinggal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'telepon', 'error')} ">
	<label for="telepon">
		<g:message code="mahasiswaWisuda.telepon.label" default="Telepon" />
		
	</label>
	<g:textField name="telepon" value="${mahasiswaWisudaInstance?.telepon}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'sumberBiaya', 'error')} ">
	<label for="sumberBiaya">
		<g:message code="mahasiswaWisuda.sumberBiaya.label" default="Sumber Biaya" />
		
	</label>
	<g:textField name="sumberBiaya" value="${mahasiswaWisudaInstance?.sumberBiaya}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'keteranganSumberBiaya', 'error')} ">
	<label for="keteranganSumberBiaya">
		<g:message code="mahasiswaWisuda.keteranganSumberBiaya.label" default="Keterangan Sumber Biaya" />
		
	</label>
	<g:textField name="keteranganSumberBiaya" value="${mahasiswaWisudaInstance?.keteranganSumberBiaya}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'namaOrangTua', 'error')} ">
	<label for="namaOrangTua">
		<g:message code="mahasiswaWisuda.namaOrangTua.label" default="Nama Orang Tua" />
		
	</label>
	<g:textField name="namaOrangTua" value="${mahasiswaWisudaInstance?.namaOrangTua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'pekerjaanOrangTua', 'error')} ">
	<label for="pekerjaanOrangTua">
		<g:message code="mahasiswaWisuda.pekerjaanOrangTua.label" default="Pekerjaan Orang Tua" />
		
	</label>
	<g:textField name="pekerjaanOrangTua" value="${mahasiswaWisudaInstance?.pekerjaanOrangTua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'alamatOrangTua', 'error')} ">
	<label for="alamatOrangTua">
		<g:message code="mahasiswaWisuda.alamatOrangTua.label" default="Alamat Orang Tua" />
		
	</label>
	<g:textArea rows="5" cols="3" name="alamatOrangTua" value="${mahasiswaWisudaInstance?.alamatOrangTua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mahasiswaWisudaInstance, field: 'avatar', 'error')} ">
	<label for="avatar">
		<g:message code="mahasiswaWisuda.avatar.label" default="Foto max(100Kb)" />
		
	</label>
	<input type="file" id="avatar" name="avatar" />

</div>


