//
//  ViewController.swift
//  MyApp
//
//  Created by Komai Toshihiko on 2020/02/13.
//  Copyright © 2020 Komai Toshihiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let labelSwift: UILabel = UILabel(frame: CGRect(x:0,y:0,width:130,height:50))
        
        labelSwift.layer.position = CGPoint(x:self.view.bounds.width/2, y:100)
        
        labelSwift.text = "Swift is cool!!"
        
        self.view.addSubview(labelSwift)
        
    }


}

