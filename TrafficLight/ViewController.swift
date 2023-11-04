//
//  ViewController.swift
//  TrafficLight
//
//  Created by Dmitry Parhomenko on 04.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        redColor.layer.cornerRadius = 69
        redColor.alpha = 0.2
        
        yellowColor.layer.cornerRadius = 69
        yellowColor.alpha = 0.2
        
        greenColor.layer.cornerRadius = 69
        greenColor.alpha = 0.2
        
        button.layer.cornerRadius = 20
    }
      
    @IBAction func buttonGetTapped(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        if redColor.alpha == 1 {
            redColor.alpha = 0.2
            yellowColor.alpha = 1
        } else if yellowColor.alpha == 1 {
            yellowColor.alpha = 0.2
            greenColor.alpha = 1
        } else if greenColor.alpha == 1 {
            greenColor.alpha = 0.2
            redColor.alpha = 1
        } else {
            redColor.alpha = 1
        }
    }
}

