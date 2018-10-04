//
//  ViewController.swift
//  ExamenDemo
//
//  Created by Adrian on 04/10/2018.
//  Copyright © 2018 Adrián Blázquez León. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quesoViewUp: QuesoView!
    
    @IBOutlet weak var quesoViewDown: QuesoView!
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        quesoViewUp.a0 = 0
        quesoViewDown.a1 = 2*Double.pi
        
        slider.sendActions(for: .valueChanged
        )
        
    }

    
    @IBOutlet weak var updateQuesoUp: QuesoView!
    
    @IBAction func updateQuesos(_ sender: UISlider) {
        
        let v = Double(sender.value)
        
        quesoViewUp.a1 = v*2*Double.pi
        quesoViewDown.a0 = 2*v*Double.pi
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

