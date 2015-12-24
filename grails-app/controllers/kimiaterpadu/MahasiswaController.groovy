package kimiaterpadu



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MahasiswaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Mahasiswa.list(params), model:[mahasiswaInstanceCount: Mahasiswa.count()]
    }

    def show(Mahasiswa mahasiswaInstance) {
        respond mahasiswaInstance
    }

    def create() {
        respond new Mahasiswa(params)
    }

    @Transactional
    def save(Mahasiswa mahasiswaInstance) {
        if (mahasiswaInstance == null) {
            notFound()
            return
        }

        if (mahasiswaInstance.hasErrors()) {
            respond mahasiswaInstance.errors, view:'create'
            return
        }

        mahasiswaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'mahasiswa.label', default: 'Mahasiswa'), mahasiswaInstance.id])
                redirect mahasiswaInstance
            }
            '*' { respond mahasiswaInstance, [status: CREATED] }
        }
    }

    def edit(Mahasiswa mahasiswaInstance) {
        respond mahasiswaInstance
    }

    @Transactional
    def update(Mahasiswa mahasiswaInstance) {
        if (mahasiswaInstance == null) {
            notFound()
            return
        }

        if (mahasiswaInstance.hasErrors()) {
            respond mahasiswaInstance.errors, view:'edit'
            return
        }

        mahasiswaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Mahasiswa.label', default: 'Mahasiswa'), mahasiswaInstance.id])
                redirect mahasiswaInstance
            }
            '*'{ respond mahasiswaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Mahasiswa mahasiswaInstance) {

        if (mahasiswaInstance == null) {
            notFound()
            return
        }

        mahasiswaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Mahasiswa.label', default: 'Mahasiswa'), mahasiswaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'mahasiswa.label', default: 'Mahasiswa'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
