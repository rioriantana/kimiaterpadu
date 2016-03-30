package kimiaterpadu



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = false)
class PendaftaranSkripsiController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PendaftaranSkripsi.list(params), model:[pendaftaranSkripsiInstanceCount: PendaftaranSkripsi.count()]
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
        def profilMahasiswa = ProfilKeminatanMahasiswa.get(params.id)
        respond new PendaftaranSkripsi(params)
        [profilMahasiswa: profilMahasiswa]
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
                redirect (action: "profil", id: pendaftaranSkripsiInstance.id)
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
        if(!pendaftaranSkripsiInstance){
            flash.message = "Anda belum mendaftar skripsi, isi form pendaftaran berikut."
            redirect (action: "create", id: params.id)
        }
        [pendaftaranSkripsiInstance: pendaftaranSkripsiInstance]
    }
    def setujui(){
        def pendaftaranSkripsiInstance = PendaftaranSkripsi.get(params.id)
        pendaftaranSkripsiInstance.status = "DISETUJUI"
        pendaftaranSkripsiInstance.save flush:true
        flash.message = "Pengajuan Skripsi Telah Disetujui"
        redirect (action:"index")
    }
}
