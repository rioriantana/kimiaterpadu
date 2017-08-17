package kimiaterpadu


import static org.springframework.http.HttpStatus.*

class RekapController {

    def index() { 
    }
    def kuotaDosen(){
    	def pembimbingInstance = Pembimbing.findAllByRole("Dosen")
    	[pembimbingInstanceList: pembimbingInstance]
    }
    def rekapMahasiswaWisudaTahunAngkatan(){
    	 if(!params.tahunAngkatan){
            return[]
        }
        def tahunAngkatan = params.tahunAngkatan
        def tahunAngkatans = tahunAngkatan + 365
        def informasiInstance = MahasiswaWisuda.findAllByTanggalMasukBetween(tahunAngkatan, tahunAngkatans)
        def informasiInstanceCount = MahasiswaWisuda.countByTanggalMasukBetween(tahunAngkatan, tahunAngkatans)
       def a = MahasiswaWisuda.where{ between("tanggalMasuk", tahunAngkatan, tahunAngkatans)}
        def lamaStudi = a.get{projections{avg "lamaStudi"}}
        def ipk = a.get{projections{avg "ipk"}}
        def lamaSkripsi = a.get{projections{avg "lamaSkripsi"}}
        render(controller: this, template: "rekapMahasiswaWisudaTahunAngkatan", model: [informasiInstance: informasiInstance, informasiInstanceCount: informasiInstanceCount, tahunAngkatan: tahunAngkatan, lamaStudi: lamaStudi, ipk: ipk, lamaSkripsi: lamaSkripsi])
    }
    def rekapMahasiswaWisudaTahunAkademik(){
    	if(!params.tanggalAwal && !params.tanggalAkhir){
            return[]
        }
        def tanggalAwal = params.tanggalAwal
        def tanggalAkhir = params.tanggalAkhir + 30
        def informasiInstance = MahasiswaWisuda.findAllByTanggalLulusBetween(tanggalAwal, tanggalAkhir)
        def informasiInstanceCount = MahasiswaWisuda.countByTanggalLulusBetween(tanggalAwal, tanggalAkhir)
        def a = MahasiswaWisuda.where{ between("tanggalLulus", tanggalAwal, tanggalAkhir)}
        def lamaStudi = a.get{projections{avg "lamaStudi"}}
        def ipk = a.get{projections{avg "ipk"}}
        def lamaSkripsi = a.get{projections{avg "lamaSkripsi"}}
        render(controller: this, template: "rekapMahasiswaWisudaTahunAkademik", model: [informasiInstance: informasiInstance, informasiInstanceCount: informasiInstanceCount, tanggalAwal: tanggalAwal, tanggalAkhir: tanggalAkhir, lamaStudi: lamaStudi, ipk: ipk, lamaSkripsi: lamaSkripsi])
    }
    def rekapMahasiswaWisudaTahunBerjalan(){
    	 if(!params.tahunAngkatan){
            return[]
        }
        def tahunAngkatan = params.tahunAngkatan
        def tahunAngkatans = tahunAngkatan + 365
        def informasiInstance = MahasiswaWisuda.findAllByTanggalLulusBetween(tahunAngkatan, tahunAngkatans)
        def informasiInstanceCount = MahasiswaWisuda.countByTanggalLulusBetween(tahunAngkatan, tahunAngkatans)
        def a = MahasiswaWisuda.where{ between("tanggalLulus", tahunAngkatan, tahunAngkatans)}
        def lamaStudi = a.get{projections{avg "lamaStudi"}}
        def ipk = a.get{projections{avg "ipk"}}
        def lamaSkripsi = a.get{projections{avg "lamaSkripsi"}}
        render(controller: this, template: "rekapMahasiswaWisudaTahunBerjalan", model: [informasiInstance: informasiInstance, informasiInstanceCount: informasiInstanceCount, tahunAngkatan: tahunAngkatan, lamaStudi: lamaStudi, ipk: ipk, lamaSkripsi: lamaSkripsi])
    }
    def rekapKeminatanMahasiswaKimiaTahunBerjalan(){
        if(!params.tanggalAwal && !params.tanggalAkhir){
            return[]
        }
        def tanggalAwal = params.tanggalAwal
        def tanggalAkhir = params.tanggalAkhir + 30
        def list = ProfilKeminatanMahasiswa.findAllByTanggalUpdateBetween(tanggalAwal, tanggalAkhir)
        render(controller: this, template: "rekapKeminatanMahasiswaKimiaTahunBerjalan", model: [profilKeminatanMahasiswaInstanceList: list, tanggalAwal: tanggalAwal, tanggalAkhir: tanggalAkhir])
    }
    def rekapSkripsiAngkatan(){
        if(!params.tanggalAwal && !params.tanggalAkhir){
            return[]
        }
         def tanggalAwal = params.tanggalAwal
        def tanggalAkhir = params.tanggalAkhir + 30
        def list = PendaftaranSkripsi.findAllByTanggalKRSBetween(tanggalAwal, tanggalAkhir)
         render(controller: this, template: "rekapSkripsi", model: [pendaftaranSkripsiInstanceList: list, tanggalAwal: tanggalAwal, tanggalAkhir: tanggalAkhir])
    }
}
