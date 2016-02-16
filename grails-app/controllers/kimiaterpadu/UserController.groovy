package kimiaterpadu

class UserController {

    def index(){
		if(!session.user) {
		redirect(action:'login')
	}
	}
	
    def login() { 
			if(session.user) {
					redirect(controller:'user')
					return
			}
			session.invalidate()
	}
	
	def doLogin() {
			
		def user = Pembimbing.findWhere(nidn:params['nidn'], password:params['password'])
		if (user) {
			session.user = user.id
			redirect(controller:'user')
		} else
			redirect(controller:'user',action:'login')
	}
	
	def logout() {
			session.invalidate()
			redirect(controller:'user',action:'login')
	}
}
