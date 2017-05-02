package kimiaterpadu



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = false)
class PengaturanController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pengaturan.list(params), model:[pengaturanInstanceCount: Pengaturan.count()]
    }

    def show(Pengaturan pengaturanInstance) {
        respond pengaturanInstance
    }

    def keminatan(){
        def pengaturanInstance = Pengaturan.get(1)
        def kemin = pengaturanInstance.keminatan
        if (kemin == '0') {
            pengaturanInstance.keminatan = '1'
        }
        else{
            pengaturanInstance.keminatan = '0'
        }
        pengaturanInstance.save flush:true
        redirect (uri: '/')
    }


    def create() {
        respond new Pengaturan(params)
    }

    @Transactional
    def save(Pengaturan pengaturanInstance) {
        if (pengaturanInstance == null) {
            notFound()
            return
        }

        if (pengaturanInstance.hasErrors()) {
            respond pengaturanInstance.errors, view:'create'
            return
        }

        pengaturanInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pengaturan.label', default: 'Pengaturan'), pengaturanInstance.id])
                redirect pengaturanInstance
            }
            '*' { respond pengaturanInstance, [status: CREATED] }
        }
    }

    def edit(Pengaturan pengaturanInstance) {
        respond pengaturanInstance
    }

    @Transactional
    def update(Pengaturan pengaturanInstance) {
        if (pengaturanInstance == null) {
            notFound()
            return
        }

        if (pengaturanInstance.hasErrors()) {
            respond pengaturanInstance.errors, view:'edit'
            return
        }

        pengaturanInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Pengaturan.label', default: 'Pengaturan'), pengaturanInstance.id])
                redirect pengaturanInstance
            }
            '*'{ respond pengaturanInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Pengaturan pengaturanInstance) {

        if (pengaturanInstance == null) {
            notFound()
            return
        }

        pengaturanInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pengaturan.label', default: 'Pengaturan'), pengaturanInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pengaturan.label', default: 'Pengaturan'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
