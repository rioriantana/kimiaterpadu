package kimiaterpadu

class UserController {

    def index(){
		if(!session.user) {
		redirect(action:'login')
	}
	
	}
	
    def login() { 
			if(session.user) {
			redirect(uri: '/')
					return
			}
			session.invalidate()
	}

	def loginDosen() { 
			if(session.user) {
					redirect(controller:'user')
					return
			}
			session.invalidate()
	}
	
	def doLogin() {
		def user = ProfilKeminatanMahasiswa.findWhere(nim:params['nim'], password:params['password'])
		if (user) {
			session.user = user.id
			session.role = "MAHASISWA"
			redirect(uri: '/')
		} else
			redirect(controller:'user',action:'login')
	}
	
	def doLoginDosen() {
		def user = Pembimbing.findWhere(nidn:params['nidn'], password:params['password'])
		if (user) {
			session.user = user.id
			session.role = user.role
			redirect(uri: '/')
		} else
			redirect(controller:'user',action:'loginDosen')
	}

	def logout() {
			session.invalidate()
			redirect(controller:'user',action:'login')
	}

	def lupaPassword(){
		if (!params.nim) {
			return
		}
		else{
		def nim = params.nim.toUpperCase()
		def keminatan = ProfilKeminatanMahasiswa.executeQuery("from ProfilKeminatanMahasiswa as p where upper(p.nim) = :nim", [nim: nim])
		if (!keminatan) {
			flash.message = "Maaf NIM Tidak Dikenal"
		}
		else{
			sendMail {
	            to keminatan.email
	            subject "Lupa Password"
	            body "Password akun Kimia Terpadu dengan NIM "+nim+" adalah "+keminatan.password
        	}
			flash.message = "Password anda telah dikirim ke email anda. Silahkan cek email anda."
		}
	}
	}
}
