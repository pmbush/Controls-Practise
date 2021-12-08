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
    @IBOutlet weak var textField: UITextField!
    
    var number: UInt8 = 128 {
        didSet{
            UpdateUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
    }
    
    /// Updates all outlets to number
    func UpdateUI() {
        buttonNew.setTitle("\(number)", for: [])
        
        //to do switches to number
        
        slider.value = Float(number)
        textField.text = "\(number)"
        
    }

    @IBAction func buttonNewPressed() {
        number = UInt8((Int(number) + 1) % 256)
    }
    
    @IBAction func switchToodled(_ sender: UISwitch) {
        print(#line, #function, sender.tag)
    }
   
    @IBAction func sladerMoved() {
        number = UInt8(slider.value)
    }

    
    @IBAction func textFieldEdited() {
        number = UInt8(textField.text ?? "") ?? 128
    }
    
    
}

