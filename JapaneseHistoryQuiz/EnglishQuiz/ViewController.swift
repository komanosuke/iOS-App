//
//  ViewController.swift
//  EnglishQuiz
//
//  Created by Komai Toshihiko on 2019/11/20.
//  Copyright © 2019 Komai Toshihiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func startQuiz(_ sender: Any) {
        performSegue(withIdentifier: "showQuizView", sender: nil)
    }
    
 
    
}

