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
        
        redColor.alpha = 0.3
        yellowColor.alpha = 0.3
        greenColor.alpha = 0.3
        redColor.layer.cornerRadius = 50
        yellowColor.layer.cornerRadius = 50
        greenColor.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10

    }
    @IBAction func pushButton(_ sender: Any) {
        redColor.alpha = 1
        startButton.setTitle("NEXT", for: .normal)
        if redColor.alpha == 1 {
            redColor.alpha = 0.3
            yellowColor.alpha = 1
            
        
        }
    }
    

}
