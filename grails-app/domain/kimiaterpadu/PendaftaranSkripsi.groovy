package kimiaterpadu

class PendaftaranSkripsi {
	ProfilKeminatanMahasiswa namaNIM
	Pembimbing pembimbing1
	Pembimbing pembimbing2
	String penguji1
	String penguji2
	String judulSkripsi
	String email
	Date tanggalSeminarProposal
	Date tanggalSeminarHasil
	Date tanggalUjianSkripsi
	String validasiSeminarProposal
	String validasiSeminarHasil
	String validasiUjianSkripsi
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
		validasiSeminarProposal(nullable: true)
		validasiSeminarHasil(nullable: true)
		validasiUjianSkripsi(nullable: true)
		status(nullable: true)
    }
    public String toString(){
    	"$namaNIM"
    }
}
