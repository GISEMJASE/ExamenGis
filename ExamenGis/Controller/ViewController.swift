//
//  ViewController.swift
//  ExamenGis
//
//  Created by Sem on 15/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageAlbum: UIImageView!
    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var lblAlbum: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var tblSongs: UITableView!
    @IBOutlet weak var tblAlbums: UITableView!{
        didSet {
            self.tblAlbums.delegate = self
            self.tblAlbums.dataSource = self
        }
    }
    
    let artist : String = "Nightwish"
    let album : String = "Once"
    let year : String = "2001"
    let songs: [String] = ["Cancion 1","Cancion 2","Cancion 3","Cancion 4", "Cancion 5", "Cancion 6", "Cancion 7", "Cancion 8","Cancion 9","Cancion 10"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tblAlbums.register(UINib(nibName: "MusicTableViewCell", bundle: .main), forCellReuseIdentifier: "MusicTableViewCell")
    
    
    }


}
extension ViewController:UITableViewDelegate{}
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MusicTableViewCell", for: indexPath) as? MusicTableViewCell ?? MusicTableViewCell()
  
        
        return cell 
    }
}

