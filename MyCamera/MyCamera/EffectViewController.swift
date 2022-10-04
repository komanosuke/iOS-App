//
//  EffectViewController.swift
//  MyCamera
//
//  Created by Komai Toshihiko on 2019/11/19.
//  Copyright © 2019 Komai Toshihiko. All rights reserved.
//

import UIKit

class EffectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        effectImage.image = originalImage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    var originalImage : UIImage?
    
    @IBOutlet weak var effectImage: UIImageView!
    
    // 0.モノクロ
    // 1.Chrome
    // 2.Fade
    // 3.Instant
    // 4.Noir
    // 5.Process
    // 6.Total
    // 7.Transfer
    // 8.Sepia Tone
    let filterArray = ["CIPhotoEffectMono","CIPhotoEffectChrome","CIPhotoEffectFade","CIPhotoEffectInstant","CIPhotoEffectNoir","CIPhotoEffectProcess","CIPhotoEffectTonal","CIPhotoEffectTransfer","CISepiaTone"
    ]
    
    var filterSelectNumber = 0
    
   
    @IBAction func effectButtonAction(_ sender: Any) {
        
        if let image = originalImage {
            
            let filterName = filterArray[filterSelectNumber]
            
            filterSelectNumber += 1
            
            if filterSelectNumber == filterArray.count {
                
                filterSelectNumber = 0
            }
            
            let rotate = image.imageOrientation
            
            let inputImage = CIImage(image: image)
            
            guard let effectFilter = CIFilter(name: filterName) else {
                return
            }
            
            effectFilter.setDefaults()
            
            effectFilter.setValue(inputImage, forKey: kCIInputImageKey)
            
            guard let outputImage = effectFilter.outputImage else {
                return
            }
            
            let ciContext = CIContext(options: nil)
            
            guard let cgImage = ciContext.createCGImage(outputImage, from: outputImage.extent) else {
                return
            }
            
            effectImage.image = UIImage(cgImage: cgImage, scale: 1.0, orientation: rotate)
        }
    }
    
    @IBAction func shareButtonAction(_ sender: Any) {
        
        if let shareImage = effectImage.image {
            
            let shareItems = [shareImage]
            
            let controller = UIActivityViewController(activityItems: shareItems, applicationActivities: nil)
            
            let button = sender as! UIButton
            
            controller.popoverPresentationController?.sourceView = button
            
            present(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func closeButtonAction(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
}
