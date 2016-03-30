package kimiaterpadu


import static org.springframework.http.HttpStatus.*

class RekapController {

    def index() { 
    }
    def kuotaDosen(){
    	def pembimbingInstance = Pembimbing.findAllByRole("Dosen")
    	[pembimbingInstanceList: pembimbingInstance]
    }
}
