//
//  ViewController.swift
//  ExamenGis
//
//  Created by Sem on 15/10/22.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - O U T L E T S
    @IBOutlet weak var imageAlbum: UIImageView!{
        didSet{ self.imageAlbum.layer.cornerRadius = 60 }
    }
    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var lblAlbum: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var tblSongs: UITableView!{
        didSet{
            self.tblSongs.delegate = self
            self.tblSongs.dataSource = self
            self.tblSongs.register(UINib(nibName: "SongsTableViewCell", bundle: .main), forCellReuseIdentifier: "SongsTableViewCell")
        }
    }
    
    @IBOutlet weak var tblAlbums: UITableView!{
        didSet {
            self.tblAlbums.delegate = self
            self.tblAlbums.dataSource = self
            self.tblAlbums.register(UINib(nibName: "MusicTableViewCell", bundle: .main), forCellReuseIdentifier: "MusicTableViewCell")
        }
        
    }
    
    
    let musicData: DataMusic = DataMusic()
    var arrAlbums: [Album] = []
    var songs: [String] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        arrAlbums = musicData.setAlbums()
        self.setInitialAlbum()
        
    }
    //MARK: - A L B U M      I N I C I A L
    func setInitialAlbum(){
        lblArtist.text = self.arrAlbums[0].artist ?? ""
        lblYear.text = self.arrAlbums[0].year ?? ""
        lblAlbum.text = self.arrAlbums[0].nameAlbum ?? ""
        songs = self.arrAlbums[0].arrSong ?? []
        imageAlbum.image = UIImage(named: arrAlbums[0].artist ?? "")
    }
    
    
}

//MARK: - T A B L A S
extension ViewController:UITableViewDelegate & UITableViewDataSource{
// tag 1 = Canciones, tag 2 = albums
    
    internal func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    if tableView.tag == 2{
    return "*** M Á S  A L B U M S ***"
    }else {
        return "C A N C I O N E S"
    }}

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView.tag == 2{
            return arrAlbums.count
        }else {
            return songs.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView.tag == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "MusicTableViewCell", for: indexPath) as? MusicTableViewCell ?? MusicTableViewCell()
            cell.setCell(withAlbum: arrAlbums[indexPath.row])
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SongsTableViewCell", for: indexPath) as? SongsTableViewCell ?? SongsTableViewCell()
            cell.setCell(withNoSong: "\(indexPath.row + 1)", andNameSong: songs[indexPath.row])
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView.tag == 2{
            let fullalbum: DetailMusicViewController = DetailMusicViewController()
            let albumToSend = arrAlbums[indexPath.row]
            fullalbum.album = albumToSend
            self.navigationController?.pushViewController(fullalbum, animated: true)
        }
    }
    
}

