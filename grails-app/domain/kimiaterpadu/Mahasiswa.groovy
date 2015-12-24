package kimiaterpadu

class Mahasiswa {
	String nim
	String nama
	String ttl
	String agama
	String jenisKelamin
	String alamatAsal
	String telepon
	String kodePos
	String alamatSolo
	String teleponSolo
	String nomotHP
	String jumlahSaudara
	String anakKe
	String namaOrangTua
	String alamatOrangTua
	String teleponOrangTua
	String kodePosOrangTua
	String pekerjaanOrangTua
	String alamatKantor
	String asalSekolah
	String propinsiAsalSekolah
	String jalurMasuk
	String nilaiMatematika
	String nilaiKimia
	String nilaiFisika
	String nilaiBahasaIndonesia
	String nilaiBahasaInggris
	String nilaiPKN
	String tinggiBadan
	String beratBadan
	String golonganDarah

    static constraints = {
    nim(nullable: true)
	nama(nullable: true)
	ttl(nullable: true)
	agama(nullable: true)
	jenisKelamin(nullable: true, inList: ['Laki-Laki', 'Perempuan'])
	alamatAsal(nullable: true)
	telepon(nullable: true)
	kodePos(nullable: true)
	alamatSolo(nullable: true)
	teleponSolo(nullable: true)
	nomotHP(nullable: true)
	jumlahSaudara(nullable: true)
	anakKe(nullable: true)
	namaOrangTua(nullable: true)
	alamatOrangTua(nullable: true)
	teleponOrangTua(nullable: true)
	kodePosOrangTua(nullable: true)
	pekerjaanOrangTua(nullable: true)
	alamatKantor(nullable: true)
	asalSekolah(nullable: true)
	propinsiAsalSekolah(nullable: true, inList: ['Nanggro Aceh Darussalam','Sumatera Utara','Sumatera Barat','Riau','Kepulauan Riau','Jambi','Sumatera Selatan','Bangka Belitung','Bengkulu','Lampung','DKI Jakarta','Jawa Barat','Banten','Jawa Tengah','Daerah Istimewa Yogyakarta','Jawa Timur','Bali','Nusa Tenggara Barat','Nusa Tenggara Timur','Kalimantan Barat','Kalimantan Tengah','Kalimantan Selatan','Kalimantan Timur','Kalimantan Utara','Sulawesi Utara','Sulawesi Barat','Sulawesi Tengah','Sulawesi Tenggara','Sulawesi Selatan','Gorontalo','Maluku','Maluku Utara','Papua Barat','Papua'])
	jalurMasuk(nullable: true, inList: ['SNMPTN', 'SBMPTN', 'SM-S1 UNS'])
	nilaiMatematika(nullable: true)
	nilaiKimia(nullable: true)
	nilaiFisika(nullable: true)
	nilaiBahasaIndonesia(nullable: true)
	nilaiBahasaInggris(nullable: true)
	nilaiPKN(nullable: true)
	tinggiBadan(nullable: true)
	beratBadan(nullable: true)
	golonganDarah(nullable: true)
    }
}
