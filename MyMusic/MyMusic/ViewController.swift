//
//  ViewController.swift
//  MyMusic
//
//  Created by Komai Toshihiko on 2019/10/29.
//  Copyright © 2019 Komai Toshihiko. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("03-Supersonic.wav")
    
    var cymbalPlayer:AVAudioPlayer!

    @IBAction func cymbal(_ sender: Any) {
        do {
            cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
        
            cymbalPlayer.play()
        } catch {
            print("ドラムでエラーが発生しました！")
        }
    }
    
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("Layla")
    
    var guitarPlayer:AVAudioPlayer!
    
    
    @IBAction func guitar(_ sender: Any) {
        do {
            
            guitarPlayer = try AVAudioPlayer(contentsOf:guitarPath, fileTypeHint: nil)
            guitarPlayer.play()
        } catch {
            print("ギターでエラーが発生しました！")
        }
    }
    
}

