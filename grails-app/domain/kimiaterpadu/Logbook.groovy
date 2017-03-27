package kimiaterpadu

class Logbook {
	ProfilKeminatanMahasiswa namaNIM
	Date tanggal
	String kegiatan
	String kemajuan
	String kendala
    static constraints = {
    	namaNIM(nullable: true)
		tanggal(nullable: true)
		kegiatan(nullable: true)
		kemajuan(nullable: true)
		kendala(nullable: true)
    }
    
	public String toString(){
    	"$namaNIM - $tanggal"
    }
}
