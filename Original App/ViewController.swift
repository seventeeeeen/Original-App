//
//  ViewController.swift
//  Original App
//
//  Created by 河本珠奈 on 2020/08/30.
//  Copyright © 2020 Kawamoto Juna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var contentTextView: UITextView!
    @IBOutlet var eventTextField: UITextField!
    @IBOutlet var dayTextField: UITextField!
    @IBOutlet var Aswitch: UISwitch!
    @IBOutlet var atolabel: UILabel!
    @IBOutlet var nichilabel: UILabel!
    
    
    
    var saveData: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentTextView.text = saveData.object(forKey: "content") as? String
        eventTextField.text = saveData.object(forKey: "event") as? String
        dayTextField.text = saveData.object(forKey: "day") as? String
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveMemo(){
        
        //UserDefaultsに書き込み
        saveData.set(contentTextView.text, forKey: "content")
        saveData.set(eventTextField.text, forKey: "event")
        saveData.set(dayTextField.text, forKey: "day")
    }
    
    @IBAction func swich() {
        if Aswitch.isOn {
            atolabel.isHidden = false
            dayTextField.isHidden = false
            nichilabel.isHidden = false
            
        } else {
            atolabel.isHidden = true
            dayTextField.isHidden = true
            nichilabel.isHidden = true
            
        }
        
    }

    @IBAction func backBtnAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }


}

