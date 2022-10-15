//
//  MusicTableViewCell.swift
//  ExamenGis
//
//  Created by Sem on 15/10/22.
//

import UIKit

class MusicTableViewCell: UITableViewCell {
    @IBOutlet weak var imgAlbum: UIImageView!
    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var lblAlbum: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
