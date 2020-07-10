//
//  DetailViewController.swift
//  MyDicodingProfile
//
//  Created by Fahmi on 13/05/20.
//  Copyright © 2020 Kementerian Agama Republik Indonesia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var academyName: UILabel!
    @IBOutlet weak var academyLogo: UIImageView!
    @IBOutlet weak var academyStats: UILabel!
    @IBOutlet weak var academyDescription: UITextView!
    
    var academy:Academy?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let result = academy {
            academyName.text = result.name
            academyLogo.image = result.logo
            academyStats.text = result.stats
            academyDescription.text = result.description
        }
    }

}
