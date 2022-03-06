//
//  ViewController.swift
//  a202ImageKing
//
//  Created by 申潤五 on 2022/3/6.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {

    @IBOutlet weak var theImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        theImage.layer.borderColor = UIColor.gray.cgColor
        theImage.layer.borderWidth = 1
        theImage.layer.cornerRadius = theImage.bounds.width / 2
        theImage.clipsToBounds = true
        
        let path = "https://attach.setn.com/newsimages/2019/12/28/2328596-PH.jpg"
        let url = URL(string: path)!
        
        print("start:\(Date().timeIntervalSince1970))")
        
        theImage.sd_setImage(with: url) { image, error, type, url in
            print("endImage:\(Date().timeIntervalSince1970))")
        }

        
        

        print("endUI:\(Date().timeIntervalSince1970))")
    }


}

