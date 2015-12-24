package kimiaterpadu



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MahasiswaWisudaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MahasiswaWisuda.list(params), model:[mahasiswaWisudaInstanceCount: MahasiswaWisuda.count()]
    }

    def show(MahasiswaWisuda mahasiswaWisudaInstance) {
        respond mahasiswaWisudaInstance
    }

    def create() {
        respond new MahasiswaWisuda(params)
    }

    @Transactional
    def save(MahasiswaWisuda mahasiswaWisudaInstance) {
        if (mahasiswaWisudaInstance == null) {
            notFound()
            return
        }

        if (mahasiswaWisudaInstance.hasErrors()) {
            respond mahasiswaWisudaInstance.errors, view:'create'
            return
        }

        mahasiswaWisudaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'mahasiswaWisuda.label', default: 'MahasiswaWisuda'), mahasiswaWisudaInstance.id])
                redirect mahasiswaWisudaInstance
            }
            '*' { respond mahasiswaWisudaInstance, [status: CREATED] }
        }
    }

    def edit(MahasiswaWisuda mahasiswaWisudaInstance) {
        respond mahasiswaWisudaInstance
    }

    @Transactional
    def update(MahasiswaWisuda mahasiswaWisudaInstance) {
        if (mahasiswaWisudaInstance == null) {
            notFound()
            return
        }

        if (mahasiswaWisudaInstance.hasErrors()) {
            respond mahasiswaWisudaInstance.errors, view:'edit'
            return
        }

        mahasiswaWisudaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MahasiswaWisuda.label', default: 'MahasiswaWisuda'), mahasiswaWisudaInstance.id])
                redirect mahasiswaWisudaInstance
            }
            '*'{ respond mahasiswaWisudaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MahasiswaWisuda mahasiswaWisudaInstance) {

        if (mahasiswaWisudaInstance == null) {
            notFound()
            return
        }

        mahasiswaWisudaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MahasiswaWisuda.label', default: 'MahasiswaWisuda'), mahasiswaWisudaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'mahasiswaWisuda.label', default: 'MahasiswaWisuda'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
