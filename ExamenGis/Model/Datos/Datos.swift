//
//  Datos.swift
//  ExamenGis
//
//  Created by Sem on 15/10/22.
//

import Foundation
class Album {
    var artist: String?
    var nameAlbum: String?
    var year: Int?
    var arrSong: [String]?
    
    init(art: String, nam: String, yr: Int){
        self.artist = art
        self.nameAlbum = nam
        self.year = yr
    }
}

class DataMusic {
    var arrAlbums:[Album]?
    
    init(){
        arrAlbums = setAlbums()
    }

    func setAlbums() -> [Album]{
        var arrALB: [Album] = []
        let nightwishOnce = Album(art: "Nightwish", nam: "Once", yr: 2001)
        
        let placeboHomo = Album(art: "Placebo", nam: "Placebo", yr: 2000)
        
    
        
        arrALB.append(nightwishOnce)
        arrALB.append(placeboHomo)
        print(arrALB)
        return arrALB
        
    }
    
}
