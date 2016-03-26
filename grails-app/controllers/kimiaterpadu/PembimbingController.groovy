package kimiaterpadu



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = false)
class PembimbingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pembimbing.list(params), model:[pembimbingInstanceCount: Pembimbing.count()]
    }

    def show(Pembimbing pembimbingInstance) {
        respond pembimbingInstance
    }

    def create() {
        respond new Pembimbing(params)
    }

    @Transactional
    def save(Pembimbing pembimbingInstance) {
        if (pembimbingInstance == null) {
            notFound()
            return
        }

        if (pembimbingInstance.hasErrors()) {
            respond pembimbingInstance.errors, view:'create'
            return
        }

        pembimbingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pembimbing.label', default: 'Pembimbing'), pembimbingInstance.id])
                redirect pembimbingInstance
            }
            '*' { respond pembimbingInstance, [status: CREATED] }
        }
    }

    def edit(Pembimbing pembimbingInstance) {
        respond pembimbingInstance
    }

    @Transactional
    def update(Pembimbing pembimbingInstance) {
        if (pembimbingInstance == null) {
            notFound()
            return
        }

        if (pembimbingInstance.hasErrors()) {
            respond pembimbingInstance.errors, view:'edit'
            return
        }

        pembimbingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Pembimbing.label', default: 'Pembimbing'), pembimbingInstance.id])
                redirect pembimbingInstance
            }
            '*'{ respond pembimbingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Pembimbing pembimbingInstance) {

        if (pembimbingInstance == null) {
            notFound()
            return
        }

        pembimbingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pembimbing.label', default: 'Pembimbing'), pembimbingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pembimbing.label', default: 'Pembimbing'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
