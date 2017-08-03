package kimiaterpadu



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = false)
class PendaftaranSkripsiController {

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
        params.max = Math.min(max ?: 10, 100)
        def filter = params.filter
        def pendaftaranSkripsiInstance = []
        def pendaftaranSkripsiInstanceCount = []
        if (filter == "lulus") {
            pendaftaranSkripsiInstance = PendaftaranSkripsi.findAllByStatus("LULUS")
            pendaftaranSkripsiInstanceCount = PendaftaranSkripsi.countByStatus("LULUS")

            println pendaftaranSkripsiInstance
        }
        else if (filter == "skripsi") {
            pendaftaranSkripsiInstance = PendaftaranSkripsi.findAllByStatus("SKRIPSI")
            pendaftaranSkripsiInstanceCount = PendaftaranSkripsi.countByStatus("SKRIPSI")
        }
        else if (filter == "ghost") {
            pendaftaranSkripsiInstance = PendaftaranSkripsi.findAllByStatus("GHOST")
            pendaftaranSkripsiInstanceCount = PendaftaranSkripsi.countByStatus("GHOST")
        }
        else {
            pendaftaranSkripsiInstance = PendaftaranSkripsi.list(params)
            pendaftaranSkripsiInstanceCount = PendaftaranSkripsi.count()
        }
        [pendaftaranSkripsiInstanceList: pendaftaranSkripsiInstance, pendaftaranSkripsiInstanceCount: pendaftaranSkripsiInstanceCount]
    }

    def show(PendaftaranSkripsi pendaftaranSkripsiInstance) {
        respond pendaftaranSkripsiInstance
    }

    def create() {
        def mahasiswa = ProfilKeminatanMahasiswa.get(session.user)
        if(!mahasiswa.status){
            flash.message = "Maaf, keminatan anda belum disetujui."
            redirect (url:'/')
                return []
        }
        def pendaftaranSkripsiInstance = new PendaftaranSkripsi(params)
        [profilMahasiswa: mahasiswa, pendaftaranSkripsiInstance: pendaftaranSkripsiInstance]
    }

    @Transactional
    def save(PendaftaranSkripsi pendaftaranSkripsiInstance) {
        if (pendaftaranSkripsiInstance == null) {
            notFound()
            return
        }

        if (pendaftaranSkripsiInstance.hasErrors()) {
            respond pendaftaranSkripsiInstance.errors, view:'create'
            return
        }

        pendaftaranSkripsiInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pendaftaranSkripsi.label', default: 'PendaftaranSkripsi'), pendaftaranSkripsiInstance.id])
                redirect (action: "profil", id: pendaftaranSkripsiInstance.id)
            }
            '*' { respond pendaftaranSkripsiInstance, [status: CREATED] }
        }
    }

    def saveNew(PendaftaranSkripsi pendaftaranSkripsiInstance){
        if (pendaftaranSkripsiInstance == null) {
            notFound()
            return
        }

        if (pendaftaranSkripsiInstance.hasErrors()) {
            respond pendaftaranSkripsiInstance.errors, view:'create'
            return
        }
        def mahasiswa = ProfilKeminatanMahasiswa.get(params.namaNIM)
        pendaftaranSkripsiInstance.namaNIM = mahasiswa
        pendaftaranSkripsiInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pendaftaranSkripsi.label', default: 'PendaftaranSkripsi'), pendaftaranSkripsiInstance.id])
                redirect (action: "profil", id: pendaftaranSkripsiInstance.namaNIM.id)
            }
            '*' { respond pendaftaranSkripsiInstance, [status: CREATED] }
        }
    }

    def edit(PendaftaranSkripsi pendaftaranSkripsiInstance) {
        respond pendaftaranSkripsiInstance
    }

    @Transactional
    def update(PendaftaranSkripsi pendaftaranSkripsiInstance) {
        if (pendaftaranSkripsiInstance == null) {
            notFound()
            return
        }

        if (pendaftaranSkripsiInstance.hasErrors()) {
            respond pendaftaranSkripsiInstance.errors, view:'edit'
            return
        }

        pendaftaranSkripsiInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PendaftaranSkripsi.label', default: 'PendaftaranSkripsi'), pendaftaranSkripsiInstance.id])
                redirect (action: "profil", id: pendaftaranSkripsiInstance.namaNIM.id)
            }
            '*'{ respond pendaftaranSkripsiInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PendaftaranSkripsi pendaftaranSkripsiInstance) {

        if (pendaftaranSkripsiInstance == null) {
            notFound()
            return
        }

        pendaftaranSkripsiInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PendaftaranSkripsi.label', default: 'PendaftaranSkripsi'), pendaftaranSkripsiInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pendaftaranSkripsi.label', default: 'PendaftaranSkripsi'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    def profil() {
        def profilMahasiswa = ProfilKeminatanMahasiswa.get(params.id)
        def pendaftaranSkripsiInstance = PendaftaranSkripsi.findByNamaNIM(profilMahasiswa, params)
        println profilMahasiswa
        if(!pendaftaranSkripsiInstance){
            flash.message = "Anda belum mendaftar skripsi, isi form pendaftaran berikut."
            redirect (action: "create", id: params.id)
        }
        [pendaftaranSkripsiInstance: pendaftaranSkripsiInstance]
    }
    def setujui(){
        def pendaftaranSkripsiInstance = PendaftaranSkripsi.get(params.id)
        def keminatan = pendaftaranSkripsiInstance.namaNIM
        println keminatan
        keminatan.status = "SKRIPSI"
        keminatan.save flush:true
        pendaftaranSkripsiInstance.status = "DISETUJUI"
        pendaftaranSkripsiInstance.save flush:true
        flash.message = "Pengajuan Skripsi Telah Disetujui"
        redirect (action:"index")
    }

    def luluskan(){
        def pendaftaranSkripsiInstance = PendaftaranSkripsi.get(params.id)
        def keminatan = pendaftaranSkripsiInstance.namaNIM
        def pembimbing = keminatan.dosenPembimbing
        def kuotaPembimbing = pembimbing.kuota
        println keminatan
        println kuotaPembimbing
        keminatan.status = "LULUS"
        keminatan.save flush:true
        if (pendaftaranSkripsiInstance.status != 'GHOST') {
        pembimbing.kuota = kuotaPembimbing + 1
        pembimbing.save flush:true
        }
        pendaftaranSkripsiInstance.status = "LULUS"
        pendaftaranSkripsiInstance.save flush:true
        flash.message = "Mahasiswa dengan NIM "+ keminatan.nim +" telah dinyatakan LULUS"
        redirect (action:"index")
    }

    def ghost(){
        def pendaftaranSkripsiInstance = PendaftaranSkripsi.get(params.id)
        def keminatan = pendaftaranSkripsiInstance.namaNIM
        def pembimbing = keminatan.dosenPembimbing
        def kuotaPembimbing = pembimbing.kuota
        println keminatan
        keminatan.status = "GHOST"
        keminatan.save flush:true
        pembimbing.kuota = kuotaPembimbing + 1
        pembimbing.save flush:true
        pendaftaranSkripsiInstance.status = "GHOST"
        pendaftaranSkripsiInstance.save flush:true
        flash.message = "Mahasiswa dengan NIM "+ keminatan.nim +" telah berstatus GHOST"
        redirect (action:"index")
    }
}
