//
//  ViewController.swift
//  homeWork 2.1
//
//  Created by Andrey Glinkin on 03.12.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.contents = #imageLiteral(resourceName: "qwerty.jpg").cgImage
        
        redColor.alpha = 0.3
        yellowColor.alpha = 0.3
        greenColor.alpha = 0.3
        redColor.layer.cornerRadius = 85
        yellowColor.layer.cornerRadius = 85
        greenColor.layer.cornerRadius = 85
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func pushButton(_ sender: Any) {
        if startButton.titleLabel?.text == "START" {
            redColor.alpha = 1
        startButton.setTitle("NEXT", for: .normal)
        } else if redColor.alpha == 1 {
            redColor.alpha = 0.3
            yellowColor.alpha = 1
        } else if yellowColor.alpha == 1 {
            yellowColor.alpha = 0.3
            greenColor.alpha = 1
        } else if greenColor.alpha == 1 {
            greenColor.alpha = 0.3
            redColor.alpha = 1
        }
    }
    

}
