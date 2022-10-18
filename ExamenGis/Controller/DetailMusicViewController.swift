//
//  DetailMusicViewController.swift
//  ExamenGis
//
//  Created by Sem on 17/10/22.
//

import UIKit

class DetailMusicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    //MARK: - O U T L E T S
    @IBOutlet weak var AlbumCover: UIImageView!
    @IBOutlet weak var lblAlbum: UILabel!
    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var tblSongs: UITableView!{
        didSet{
            self.tblSongs.delegate = self
            self.tblSongs.dataSource = self
            self.tblSongs.register(UINib(nibName: "SongsTableViewCell", bundle: .main), forCellReuseIdentifier: "SongsTableViewCell")
        }
    }
    
    var album: Album?
    var songs: [String] = []
   
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView(withAlbum: album ?? Album(art: "ART", nam: "NAME", yr: "YYYY", sg: []))
        self.setSongs(on: album ?? Album(art: "ART", nam: "NAME", yr: "YYYY", sg: []))
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        album = nil
    }
    
    func setSongs(on album: Album){
        songs = album.arrSong ?? []
    }
    //MARK: - T A B L A S
    internal func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    
    return "C A N C I O N E S"
    }
    func setupView(withAlbum album: Album){
        self.lblAlbum.text = album.nameAlbum
        self.lblArtist.text = album.artist
        self.lblYear.text = album.year
        self.AlbumCover.image = UIImage(named: album.artist ?? "")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongsTableViewCell", for: indexPath) as? SongsTableViewCell ?? SongsTableViewCell()
        cell.setCell(withNoSong: "\(indexPath.row + 1)", andNameSong: songs[indexPath.row])
        return cell
    }
    
}
