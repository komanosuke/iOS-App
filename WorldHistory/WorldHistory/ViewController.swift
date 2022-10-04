//
//  ViewController.swift
//  WorldHistory
//
//  Created by Komai Toshihiko on 2020/02/10.
//  Copyright © 2020 Komai Toshihiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func startButton(_ sender: Any) {
        performSegue(withIdentifier: "showAgeList", sender: nil)
    }
    
    
}

