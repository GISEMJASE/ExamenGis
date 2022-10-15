//
//  SongsTableViewCell.swift
//  ExamenGis
//
//  Created by Sem on 15/10/22.
//

import UIKit

class SongsTableViewCell: UITableViewCell {
    @IBOutlet weak var lblNumberSong: UILabel!
    @IBOutlet weak var lblTitleSong: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setCell(withNoSong noSong: String, andNameSong strSong: String){
        self.lblNumberSong.text = noSong
        self.lblTitleSong.text = strSong
    }

    
}
