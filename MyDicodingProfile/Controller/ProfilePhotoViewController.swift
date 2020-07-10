//
//  ProfilePhotoViewController.swift
//  MyDicodingProfile
//
//  Created by Fahmi on 13/05/20.
//  Copyright © 2020 Kementerian Agama Republik Indonesia. All rights reserved.
//

import UIKit

class ProfilePhotoViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imagePhoto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 3.0
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imagePhoto
    }

}
