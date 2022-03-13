//
//  ViewController.swift
//  tempConverter
//
//  Created by Nikolay Litvinovich on 3.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var fahLabel: UILabel!
    @IBOutlet weak var skider: UISlider! {
        didSet {
            skider.maximumValue = 100
            skider.minimumValue = 0
            skider.value = 0
            
        }
    }
    
        
    
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let tempCelsius = Int(sender.value)
        celciusLabel.text = "\(tempCelsius)ºC"
        let farTemp = Int(sender.value * 9 / 5) + 32
        fahLabel.text = "\(farTemp)ºF"
    }
    
   


}

