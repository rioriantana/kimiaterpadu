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
        params.max = Math.min(max ?: 10, 100)
        respond ProfilKeminatanMahasiswa.list(params), model:[profilKeminatanMahasiswaInstanceCount: ProfilKeminatanMahasiswa.count()]
    }

    def show(ProfilKeminatanMahasiswa profilKeminatanMahasiswaInstance) {
        respond profilKeminatanMahasiswaInstance
    }

    def create() {
        respond new ProfilKeminatanMahasiswa(params)
       // def pembimbingInstance = Pembimbing.list().createCriteria()
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
}
