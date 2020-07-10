//
//  TopProfileViewController.swift
//  MyDicodingProfile
//
//  Created by Fahmi on 13/05/20.
//  Copyright © 2020 Kementerian Agama Republik Indonesia. All rights reserved.
//

import UIKit

class TopProfileViewController: UIViewController {

    @IBOutlet weak var profilePhoto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(TopProfileViewController.imageTapped(gesture:)))
        
        profilePhoto.addGestureRecognizer(tapGesture)
        profilePhoto.isUserInteractionEnabled = true
    }
    
    @objc func imageTapped(gesture: UIGestureRecognizer) {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfilePhotoViewScene")
        
        if (gesture.view as? UIImageView) != nil {
            self.present(controller, animated: true, completion: nil)
        }
    }

}
