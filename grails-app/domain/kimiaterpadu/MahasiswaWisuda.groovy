package kimiaterpadu

class MahasiswaWisuda {
	String nim
	String nama
	Date tanggalMasuk
	Date tanggalLulus
	String cuti
	String lamaStudi
	String ipk
	String predikatLulus
	Pembimbing pembimbing1
	Pembimbing pembimbing2
	String judulSkripsi
	String lamaSkripsi
	String asalSMA
	String tahunLulusSMA
	String propinsiSMA
	String jenisKelamin
	String wargaNegara
	String tempatTanggalLahir
	String email
	String alamatTempatTinggal
	String telepon
	String sumberBiaya
	String keteranganSumberBiaya
	String namaOrangTua
	String pekerjaanOrangTua
	String alamatOrangTua
	byte[] avatar
  	String avatarType
    static constraints = {
    	nim(nullable: true)
		nama(nullable: true)
		tanggalMasuk(nullable: true)
		tanggalLulus(nullable: true)
		cuti(nullable: true)
		lamaStudi(nullable: true)
		ipk(nullable: true)
		predikatLulus(nullable: true)
		pembimbing1(nullable: true)
		pembimbing2(nullable: true)
		judulSkripsi(nullable: true)
		lamaSkripsi(nullable: true)
		asalSMA(nullable: true)
		tahunLulusSMA(nullable: true)
		propinsiSMA(nullable: true, inList: ['Nanggro Aceh Darussalam','Sumatera Utara','Sumatera Barat','Riau','Kepulauan Riau','Jambi','Sumatera Selatan','Bangka Belitung','Bengkulu','Lampung','DKI Jakarta','Jawa Barat','Banten','Jawa Tengah','Daerah Istimewa Yogyakarta','Jawa Timur','Bali','Nusa Tenggara Barat','Nusa Tenggara Timur','Kalimantan Barat','Kalimantan Tengah','Kalimantan Selatan','Kalimantan Timur','Kalimantan Utara','Sulawesi Utara','Sulawesi Barat','Sulawesi Tengah','Sulawesi Tenggara','Sulawesi Selatan','Gorontalo','Maluku','Maluku Utara','Papua Barat','Papua'])
		jenisKelamin(nullable: true, inList: ['Laki-Laki', 'Perempuan'])
		wargaNegara(nullable: true, inList: ['WNI', 'WNA'])
		tempatTanggalLahir(nullable: true)
		email(nullable: true)
		alamatTempatTinggal(nullable: true)
		telepon(nullable: true)
		sumberBiaya(nullable: true)
		keteranganSumberBiaya(nullable: true)
		namaOrangTua(nullable: true)
		pekerjaanOrangTua(nullable: true)
		alamatOrangTua(nullable: true)
		avatar(nullable:true, maxSize: 102400)
		avatarType(nullable:true)
    }

    public String toString(){
    	"$nim"
    }
}
