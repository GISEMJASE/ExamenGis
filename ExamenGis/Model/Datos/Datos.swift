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
    var year: String?
    var arrSong: [String]?
    
    init(art: String, nam: String, yr: String, sg: [String]){
        self.artist = art
        self.nameAlbum = nam
        self.year = yr
        self.arrSong = sg
    }
}

/// Esta Clase contiene una funcion que regresa un arreglo de Albums, usando instancias de la clase Album
class DataMusic {

    func setAlbums() -> [Album]{
        var arrALB: [Album] = []
        let nightwishOnce = Album(art: "Nightwish", nam: "Nemo", yr: "2001", sg: ["Dark chest of wonders", "wish I had an angel", "nemo", "Planet hell", "Creek mary's blood", "The siren", "Dead gardens", "romanticide", "Ghost love score", "Kuolema tekee taiteillijian", "higher than hope"])
        let placeboHomo = Album(art: "Placebo", nam: "Placebo", yr: "2000", sg: ["Come home", "Teenage angst", "Bionic", "36 degress", "hang on yo your IQ", "Nancy boy", "I know", "Bruise pristine", "Lady of the flowers", "swalow", "H.K. Farewell"])
        let frankCycles = Album(art: "Franl Sinatra", nam: "Cycles", yr: "1968", sg: ["Rain in my heart", "Both sides now", "Little green apples", "Pretty colors", "Cycles", "wandering", "By the time I get to Phoenix", "Moody river", "My way of life", "Gentle on my mind"])
        let billieWhere = Album(art: "Billie Eilish", nam: "WHEN WE ALL FALL ASLEEP, WHERE DO WE GO", yr: "2019", sg: ["!!!!!!!!", "bad guy", "xanny", "you should see me in a crown", "all the good girls go to hell", "wish you were gay", "when the party's over", "8", "My strange addiction", "bury a friend", "ilomilo", "listen before i go", "i love you", "goodbye"])
        let rammsteinSehnsucht = Album(art: "Rammstein", nam: "Sehnsucht", yr: "1997", sg: ["Sehnsucht", "Engel", "Tier", "Bestrafe mich", "Du hast", "Bück dich", "Spiel mit mir", "Klavier", "Alter mann", "Eifersucht", "Küss mich (Fellfrosch)"])

      
        arrALB.append(placeboHomo)
        arrALB.append(frankCycles)
        arrALB.append(billieWhere)
        arrALB.append(nightwishOnce)
        arrALB.append(rammsteinSehnsucht)
        return arrALB
    }
}

