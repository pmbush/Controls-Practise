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
    
    var number = 128 {
        didSet{
       number = (number + 256) % 256
            updateUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rotateSwitches()
        updateUI()
    }
    
    func rotateSwitches() {
        for switching in switches {
            switching.layer.transform = CATransform3DMakeRotation(.pi / 2, 0, 0, 1)
        }
    }
    
    
    /// Updates number from the switches
    func updateNumberFromSwitches() {
        var number = 0
        for switching in switches {
            number += switching.isOn ? switching.tag : 0
        }
        
        self.number = number
    }
    
    
    /// Updates switches from the number
    func updateSwitches() {
        for switching in switches {
            switching.isOn = number & switching.tag != 0
        }
        
    }
    
    /// Updates all outlets to number
    func updateUI() {
        buttonNew.setTitle("\(number)", for: [])
        updateSwitches()
        slider.value = Float(number)
        textField.text = "\(number)"
        
    }

    @IBAction func buttonNewPressed() {
        number += 1
    }
    
    @IBAction func switchToodled(_ sender: UISwitch) {
        updateNumberFromSwitches()
    }
   
    @IBAction func sladerMoved() {
        number = Int(slider.value)
    }

    
    @IBAction func textFieldEdited() {
        number = Int(textField.text ?? "") ?? 128
    }
    
    @IBAction func screenTapped(_ sender: UITapGestureRecognizer) {
       let location = sender.location(in: view)
        if location.x < view.bounds.midX {
            number -= 1
        }
        else {
            number += 1
        }
    }
    
}

