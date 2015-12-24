package kimiaterpadu

class PendaftaranSkripsi {
	String nim
	String nama
	Pembimbing pembimbing1
	Pembimbing pembimbing2
	String judulSkripsi
	String jenisKelamin
	String tempatTanggalLahir
	String email
	String telepon
	String status
    static constraints = {
    	nim(nullable: true)
		nama(nullable: true)
		pembimbing1(nullable: true)
		pembimbing2(nullable: true)
		judulSkripsi(nullable: true)
		jenisKelamin(nullable: true)
		tempatTanggalLahir(nullable: true)
		email(nullable: true)
		telepon(nullable: true)
		status(nullable: true)
    }
    public String toString(){
    	"$nim"
    }
}
