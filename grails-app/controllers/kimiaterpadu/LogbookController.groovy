package kimiaterpadu



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LogbookController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Logbook.list(params), model:[logbookInstanceCount: Logbook.count()]
    }

    def show(Logbook logbookInstance) {
        respond logbookInstance
    }

    def create() {
        respond new Logbook(params)
    }

    @Transactional
    def save(Logbook logbookInstance) {
        if (logbookInstance == null) {
            notFound()
            return
        }

        if (logbookInstance.hasErrors()) {
            respond logbookInstance.errors, view:'create'
            return
        }
        def nim = ProfilKeminatanMahasiswa.get(session.user)
        logbookInstance.namaNIM = nim
        logbookInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'logbook.label', default: 'Logbook'), logbookInstance.id])
                redirect (action: "myLogbook", id: nim.id)
            }
            '*' { respond logbookInstance, [status: CREATED] }
        }
    }

    def edit(Logbook logbookInstance) {
        respond logbookInstance
    }

    @Transactional
    def update(Logbook logbookInstance) {
        if (logbookInstance == null) {
            notFound()
            return
        }

        if (logbookInstance.hasErrors()) {
            respond logbookInstance.errors, view:'edit'
            return
        }
        def nim = ProfilKeminatanMahasiswa.get(session.user)
        logbookInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Logbook.label', default: 'Logbook'), logbookInstance.id])
                redirect (action: "myLogbook", id: nim.id)
            }
            '*'{ respond logbookInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Logbook logbookInstance) {

        if (logbookInstance == null) {
            notFound()
            return
        }
        def nim = ProfilKeminatanMahasiswa.get(session.user)
        logbookInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Logbook.label', default: 'Logbook'), logbookInstance.id])
                redirect (action: "myLogbook", id: nim.id, method:"GET")
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'logbook.label', default: 'Logbook'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def myLogbook(Integer max){
        params.max = Math.min(max ?: 10, 100)
        def nim = ProfilKeminatanMahasiswa.get(params.id)
        def list = Logbook.findAllByNamaNIM(nim, params)
        def count = Logbook.countByNamaNIM(nim, params)
        [logbookInstanceList: list, logbookInstanceCount:count]
    }
}
