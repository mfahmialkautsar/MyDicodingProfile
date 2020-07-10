//
//  AcademyTableViewCell.swift
//  MyDicodingProfile
//
//  Created by Fahmi on 13/05/20.
//  Copyright © 2020 Kementerian Agama Republik Indonesia. All rights reserved.
//

import UIKit

class AcademyTableViewCell: UITableViewCell {

    @IBOutlet weak var academyLogo: UIImageView!
    @IBOutlet weak var academyName: UILabel!
    @IBOutlet weak var academyStats: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
