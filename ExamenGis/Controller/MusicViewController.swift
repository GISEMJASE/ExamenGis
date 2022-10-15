//
//  MusicViewController.swift
//  ExamenGis
//
//  Created by Sem on 15/10/22.
//

import UIKit

class MusicViewController: UIViewController {

    @IBOutlet weak var ImgIMGView: UIImageView!{
        didSet { self.ImgIMGView.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblAlbum: UILabel!
    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var lblAnio: UILabel!
    @IBOutlet weak var tableSongs: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
