package kimiaterpadu

class ProfilKeminatanMahasiswa {
	String nim
	String nama
	String jenisKelamin
	String tempatTanggalLahir
	String email
	String nomorTelepon
	String metodePemilihanPembimbing
	Pembimbing dosenPembimbing
	String keminatan
	Integer sksPeroleh
	Integer sksSemesterIni
	String password
	String status
	Date tanggalUpdate
	static constraints = {
		nim(nullable: true)
		nama(nullable: true)
		jenisKelamin(nullable: true, inList: ['Laki-Laki', 'Perempuan'])
		tempatTanggalLahir(nullable: true)
		email(nullable: true)
		nomorTelepon(nullable: true)
		metodePemilihanPembimbing(nullable: true, inList: ['Pilih Dosen', 'Bantuan Komisi Skripsi'])
		dosenPembimbing(nullable: true)
		keminatan(nullable: true, inList: ['Kimia Organik','Kimia Analitik','Kimia Fisik','Kimia Anorganik'])
		sksPeroleh(nullable: true)
		sksSemesterIni(nullable: true)
		password(nullable: true)
		status(nullable: true)
		tanggalUpdate(nullable: true)
	}
	public String toString(){
    	"$nim - $nama"
    }
}