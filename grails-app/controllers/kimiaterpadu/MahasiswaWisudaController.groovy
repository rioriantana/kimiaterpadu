package kimiaterpadu



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MahasiswaWisudaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
     private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']
    def avatar_image() {
        def avatarUser = MahasiswaWisuda.get(params.id)
        if (!avatarUser) {
            render "OK"
        } else {
            response.contentType = avatarUser.avatarType
            response.contentLength = avatarUser.avatar.size()
            OutputStream out = response.outputStream
            out.write(avatarUser.avatar)
            out.close()
        }
    }

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
        respond MahasiswaWisuda.list(params), model:[mahasiswaWisudaInstanceCount: MahasiswaWisuda.count()]
    }

    def show(MahasiswaWisuda mahasiswaWisudaInstance) {
        respond mahasiswaWisudaInstance
    }

    def print(MahasiswaWisuda mahasiswaWisudaInstance) {
        respond mahasiswaWisudaInstance
    }

    def create() {
        def statusMahasiswa = ProfilKeminatanMahasiswa.get(params.id)
        def keminatan = PendaftaranSkripsi.findByNamaNIM(statusMahasiswa)
        if (statusMahasiswa.status != 'LULUS') {
            flash.message = "Maaf, anda belum dinyatakan lulus."
            redirect (url:'/')
            return []
        }
        respond new MahasiswaWisuda(params), model:[skripsi: keminatan]
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
        def ipk = params.ipk
        if (ipk>='2.00' && ipk<='2.75') {
            mahasiswaWisudaInstance.predikatLulus = "Memuaskan"
        }
        else if(ipk<='3.49'){
            mahasiswaWisudaInstance.predikatLulus = "Sangat Memuaskan"
        }
        else{
            mahasiswaWisudaInstance.predikatLulus = "Cumlaude"
        }


        def f = request.getFile('avatar')
        def masuk = params.tanggalMasuk
        def keluar = params.tanggalLulus
        def lama = (keluar - masuk)/30
        if (okcontents.contains(f.getContentType())) {
        mahasiswaWisudaInstance.avatar = f.bytes
        mahasiswaWisudaInstance.avatarType = f.contentType 
    }
        mahasiswaWisudaInstance.lamaStudi = Math.ceil(lama)
        mahasiswaWisudaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'mahasiswaWisuda.label', default: 'MahasiswaWisuda'), mahasiswaWisudaInstance.id])
                redirect (action: "print", id: mahasiswaWisudaInstance.id)
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
