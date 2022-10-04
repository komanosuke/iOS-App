//
//  ageListViewController.swift
//  WorldHistory
//
//  Created by Komai Toshihiko on 2020/02/10.
//  Copyright © 2020 Komai Toshihiko. All rights reserved.
//

import UIKit

class ageListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showQuiz(_ sender: Any) {
        performSegue(withIdentifier: "showZenkindai1", sender: nil)
    }
    
    @IBAction func showQuiz12(_ sender: Any) {
        performSegue(withIdentifier: "showGendai", sender: nil)
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let svc = segue.destination as! zenkindai1ViewController
        switch segue.identifier {
        case "showZenkindai1":
            svc.baseQList = svc.quizList
            svc.baseAList = svc.answerList
        case "showGendai":
            svc.baseQList = svc.quizList12
            svc.baseAList = svc.answerList12
        default:
            return
        }
    }
    
}

/*if segue.identifier == "showZenkindai1" {
let svc = segue.destination as! zenkindai1ViewController
svc.baseQList = svc.quizList
*/
