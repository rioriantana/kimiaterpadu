package kimiaterpadu

class Pembimbing {
	String nidn
	String nip
	String nama
	String email
	String alamat
	String jenisKelamin
	Integer kuota
	String role
	String kodeAkses
	String password
    static constraints = {
    	nidn(nullable:true)
    	nip(nullable: true)
		nama(nullable:true)
		email(nullable: true)
		alamat(nullable: true)
		jenisKelamin(nullable: true, inList: ['Laki-Laki', 'Perempuan'])
		kuota(nullable:true)
		kodeAkses(nullable: true)
		role(nullable:true , inList: ['ADMIN', 'DOSEN', 'KAPRODI', 'KOMISI SKRIPSI'])
		password(nullable:false)
    }
    
	public String toString(){
    	"$nama"
    }
}
