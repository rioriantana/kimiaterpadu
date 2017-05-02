package kimiaterpadu

import grails.transaction.Transactional

@Transactional
class SetingService {

	def keminatan(){
		def pengaturan = Pengaturan.get(1)
		def keminatan = pengaturan.keminatan
		return keminatan
	}

    def serviceMethod() {

    }
}
