package kimiaterpadu

class PendaftaranSkripsi {
	ProfilKeminatanMahasiswa namaNIM
	Pembimbing pembimbing1
	Pembimbing pembimbing2
	String judulSkripsi
	String email
	Date tanggalSeminarProposal
	Date tanggalSeminarHasil
	Date tanggalUjianSkripsi
	String status
    static constraints = {
		namaNIM(nullable: true)
		pembimbing1(nullable: true)
		pembimbing2(nullable: true)
		judulSkripsi(nullable: true)
		email(nullable: true)
		tanggalSeminarProposal(nullable: true)
		tanggalSeminarHasil(nullable: true)
		tanggalUjianSkripsi(nullable: true)
		status(nullable: true)
    }
    public String toString(){
    	"$namaNIM"
    }
}
