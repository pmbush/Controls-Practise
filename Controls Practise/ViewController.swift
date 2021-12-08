//
//  ViewController.swift
//  Controls Practise
//
//  Created by Nik on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {

  
   
    @IBOutlet weak var buttonNew: UIButton!
    @IBOutlet var switches: [UISwitch]!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 

    @IBAction func buttonNewPressed() {
        print(#line, #function)
    }
    
    @IBAction func switchToodled(_ sender: UISwitch) {
        print(#line, #function, sender.tag)
    }
   
    @IBAction func sladerMoved() {
        print(#line, #function)
    }

    @IBAction func textAdded() {
        print(#line, #function)
    }
    
}

