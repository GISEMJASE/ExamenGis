//
//  DetailMusicViewController.swift
//  ExamenGis
//
//  Created by Sem on 17/10/22.
//

import UIKit

class DetailMusicViewController: UIViewController {
    
    @IBOutlet weak var AlbumCover: UIImageView!
    @IBOutlet weak var lblAlbum: UILabel!
    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var tblSongs: UITableView!
    
    var album: Album?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupView(withAlbum: album ?? Album(art: "ART", nam: "NAME", yr: "YYYY", sg: []))
       
    }
    
    func setupView(withAlbum album: Album){
        self.lblAlbum.text = album.nameAlbum
        self.lblArtist.text = album.artist
        self.lblYear.text = album.year
    }
                

}
