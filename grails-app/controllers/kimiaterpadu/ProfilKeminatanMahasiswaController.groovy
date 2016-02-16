package kimiaterpadu



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProfilKeminatanMahasiswaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ProfilKeminatanMahasiswa.list(params), model:[profilKeminatanMahasiswaInstanceCount: ProfilKeminatanMahasiswa.count()]
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

        profilKeminatanMahasiswaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'profilKeminatanMahasiswa.label', default: 'ProfilKeminatanMahasiswa'), profilKeminatanMahasiswaInstance.id])
                redirect profilKeminatanMahasiswaInstance
            }
            '*' { respond profilKeminatanMahasiswaInstance, [status: CREATED] }
        }
    }

    def edit(ProfilKeminatanMahasiswa profilKeminatanMahasiswaInstance) {
        respond profilKeminatanMahasiswaInstance
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

        profilKeminatanMahasiswaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProfilKeminatanMahasiswa.label', default: 'ProfilKeminatanMahasiswa'), profilKeminatanMahasiswaInstance.id])
                redirect profilKeminatanMahasiswaInstance
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
}
