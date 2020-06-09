//
//  ViewController.swift
//  MetalPetalImageFilter
//
//  Created by Joy Reloaded on 9/6/20.
//  Copyright © 2020 Joy Reloaded. All rights reserved.
//

import UIKit
import MetalPetal

class ViewController: UIViewController {
    @IBOutlet weak var mtiImageView: MTIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let img = UIImage(named: "image.jpg")
        let lookup = UIImage(named: "12b.png")
        let source = MTIImage(cgImage: img!.cgImage!, options: [.SRGB:false], isOpaque: true)
        let lut = MTIImage(cgImage: lookup!.cgImage!, options: [.SRGB:false], isOpaque: true)
        
        let filter = MTIColorLookupFilter()
        filter.inputColorLookupTable = lut
        filter.inputImage = source
        
        mtiImageView.image = filter.outputImage
    }


}

