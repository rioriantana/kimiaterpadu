package kimiaterpadu



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = false)
class ProfilKeminatanMahasiswaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
     def beforeInterceptor = [action:this.&checkUser, except: ['create', 'save']]
     def checkUser() {
        if(!session.user) {
            // i.e. user not logged in
            redirect(controller:'user', action:'login')
            return false
        }
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 100, 100)
        def list = []
        def count = []
        def dosen = Pembimbing.get(session.user)
        if(session.role == "KAPRODI" || session.role == "KOMISI SKRIPSI" || session.role == "ADMIN"){
            if(!params.cari){
            list = ProfilKeminatanMahasiswa.list(params)
            count = ProfilKeminatanMahasiswa.count()
        }
            else{
            def cari = "%"+params.nim+"%"
            cari = cari.toUpperCase()
            list = ProfilKeminatanMahasiswa.executeQuery("from ProfilKeminatanMahasiswa as i where upper(i.nim) like :cari", [cari: cari])   
            count = ProfilKeminatanMahasiswa.executeQuery("select count(*) from ProfilKeminatanMahasiswa as i where upper(i.nim) like :cari", [cari: cari])
            print cari
        }
        }
        else{
            if(!params.cari){
            list = ProfilKeminatanMahasiswa.findAllByDosenPembimbing(dosen, params)
            count = ProfilKeminatanMahasiswa.countByDosenPembimbing(dosen, params)
            }
            else{
            def cari = "%"+params.nim+"%"
            cari = cari.toUpperCase()
            list = ProfilKeminatanMahasiswa.executeQuery("from ProfilKeminatanMahasiswa as i where upper(i.nim) like :cari and dosenPembimbing = :dosen", [cari: cari, dosen: dosen])   
            count = ProfilKeminatanMahasiswa.executeQuery("select count(*) from ProfilKeminatanMahasiswa as i where upper(i.nim) like :cari and dosenPembimbing = :dosen", [cari: cari, dosen: dosen])
            }
        }
        [profilKeminatanMahasiswaInstanceList: list, profilKeminatanMahasiswaInstanceCount: count]
    }

    def keminatanDosen(Integer max) {
        params.max = Math.min(max ?: 100, 100)
        def list = []
        def count = []
        def dosen = Pembimbing.get(params.id)
        if(!params.cari){
            list = ProfilKeminatanMahasiswa.findAllByDosenPembimbing(dosen, params)
            count = ProfilKeminatanMahasiswa.countByDosenPembimbing(dosen, params)
            }
            else{
            def cari = "%"+params.nim+"%"
            cari = cari.toUpperCase()
            list = ProfilKeminatanMahasiswa.executeQuery("from ProfilKeminatanMahasiswa as i where upper(i.nim) like :cari and dosenPembimbing = :dosen", [cari: cari, dosen: dosen])   
            count = ProfilKeminatanMahasiswa.executeQuery("select count(*) from ProfilKeminatanMahasiswa as i where upper(i.nim) like :cari and dosenPembimbing = :dosen", [cari: cari, dosen: dosen])
            }
            [profilKeminatanMahasiswaInstanceList: list, profilKeminatanMahasiswaInstanceCount: count]
    }

    def show(ProfilKeminatanMahasiswa profilKeminatanMahasiswaInstance) {
        respond profilKeminatanMahasiswaInstance
    }

    def create() {
        respond new ProfilKeminatanMahasiswa(params)
    }

    @Transactional
    def save(ProfilKeminatanMahasiswa profilKeminatanMahasiswaInstance) {
        if (profilKeminatanMahasiswaInstance == null) {
            notFound()
            return
        }

        if (profilKeminatanMahasiswaInstance.hasErrors()) {
            respond profilKeminatanMahasiswaInstance.errors, view:'create'
            return
        }
        def profilAda = ProfilKeminatanMahasiswa.findByNim(params.nim)
        if(profilAda){
            flash.message = "Maaf NIM Sudah Digunakan."
                redirect (url:'/')
                return []
        }
        Integer jumlahSks = params.sksPeroleh.toInteger() + params.sksSemesterIni.toInteger()
        if (jumlahSks < 110){
           flash.message = "Maaf Syarat SKS Minimal Belum Terpenuhi."
                redirect (url:'/')
                return []
        }
        profilKeminatanMahasiswaInstance.tanggalUpdate = new Date()
        profilKeminatanMahasiswaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = "Selamat akun anda telah terdaftar, silahkan melakukan login."
                redirect (url:'/')
            }
            '*' { respond profilKeminatanMahasiswaInstance, [status: CREATED] }
        }
    }

    def edit(ProfilKeminatanMahasiswa profilKeminatanMahasiswaInstance) {
        def role = session.role
        [profilKeminatanMahasiswaInstance: profilKeminatanMahasiswaInstance, role: role]
    }

    @Transactional
    def update(ProfilKeminatanMahasiswa profilKeminatanMahasiswaInstance) {
        if (profilKeminatanMahasiswaInstance == null) {
            notFound()
            return
        }

        if (profilKeminatanMahasiswaInstance.hasErrors()) {
            respond profilKeminatanMahasiswaInstance.errors, view:'edit'
            return
        }
        if(!profilKeminatanMahasiswaInstance.status){
        profilKeminatanMahasiswaInstance.tanggalUpdate = new Date()
        }
        profilKeminatanMahasiswaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProfilKeminatanMahasiswa.label', default: 'ProfilKeminatanMahasiswa'), profilKeminatanMahasiswaInstance.id])
                redirect (action: "profil", id: profilKeminatanMahasiswaInstance.id)
            }
            '*'{ respond profilKeminatanMahasiswaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProfilKeminatanMahasiswa profilKeminatanMahasiswaInstance) {

        if (profilKeminatanMahasiswaInstance == null) {
            notFound()
            return
        }

        profilKeminatanMahasiswaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProfilKeminatanMahasiswa.label', default: 'ProfilKeminatanMahasiswa'), profilKeminatanMahasiswaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'profilKeminatanMahasiswa.label', default: 'ProfilKeminatanMahasiswa'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    def profil(ProfilKeminatanMahasiswa profilKeminatanMahasiswaInstance){
    respond profilKeminatanMahasiswaInstance
    }
    def setujui(){
        def profilKeminatanMahasiswaInstance = ProfilKeminatanMahasiswa.get(params.id)
        def pembimbingInstance = profilKeminatanMahasiswaInstance.dosenPembimbing
        if(pembimbingInstance.kuota < 1){
            flash.message = "Maaf kuota pembimbing sudah penuh, mohon pilih pembimbing lain."
            redirect(action: "index")
            return
        }
        else{
        profilKeminatanMahasiswaInstance.status = "DISETUJUI"
        profilKeminatanMahasiswaInstance.save flush:true
        pembimbingInstance.kuota = pembimbingInstance.kuota - 1
        pembimbingInstance.save flush:true
        }
        redirect (action:"index")
    }
    def batalSetuju(){
        def profilKeminatanMahasiswaInstance = ProfilKeminatanMahasiswa.get(params.id)
        def pembimbingInstance = profilKeminatanMahasiswaInstance.dosenPembimbing
        profilKeminatanMahasiswaInstance.status = null
        profilKeminatanMahasiswaInstance.save flush:true
        pembimbingInstance.kuota = pembimbingInstance.kuota + 1
        pembimbingInstance.save flush:true
        flash.message = "Status keminatan berhasil dibatalkan."
        redirect (action:"index")
        return
    }
    def profilKu(){
        def profilKu = ProfilKeminatanMahasiswa.get(session.user)
        [profilKeminatanMahasiswaInstance: profilKu]
    }

    def kirimEmail(){
        sendMail {
            to "rioriantana@yahoo.com"
            subject "This is a test mail"
            body "Hello, This is a test mail, how are you?"
        }
    }
}
