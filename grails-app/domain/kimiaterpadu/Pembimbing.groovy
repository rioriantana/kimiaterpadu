package kimiaterpadu

class Pembimbing {
	String nidn
	String nip
	String nama
	String kuota
	String role
	String kodeAkses
	String password
    static constraints = {
    	nidn(nullable:true)
    	nip(nullable: true)
		nama(nullable:true)
		kuota(nullable:true)
		kodeAkses(nullable: true)
		role(nullable:true, inList: ['ADMIN', 'DOSEN', 'KAPRODI'])
		password(nullable:false)
    }
    
	public String toString(){
    	"$nama"
    }
}
