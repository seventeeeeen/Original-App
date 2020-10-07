//
//  ViewController1.swift
//  Original App
//
//  Created by 河本珠奈 on 2020/09/13.
//  Copyright © 2020 Kawamoto Juna. All rights reserved.
//

import UIKit

class CountViewController: UIViewController {
    
    @IBOutlet var contentTextView: UITextView!
    @IBOutlet var eventLabel: UILabel!
    @IBOutlet var changeLabel: UILabel!
    
    var number1: Int = 0
    var number2: Int = saveData.object(forKey: "day") 
    
    @IBOutlet var dayLabel: UILabel!
    @IBOutlet var nichiLabel: UILabel!
    
    var saveData: UserDefaults = UserDefaults.standard


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        eventLabel.text = saveData.object(forKey: "event") as? String
        dayLabel.text = saveData.object(forKey: "day") as? String
        contentTextView.text = saveData.object(forKey: "content") as? String
    }
    
    
    //@IBAction func saveMemo(){
        
        //UserDefaultsに書き込み
        //saveData.set(contentTextView.text, forKey: "content")
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
@IBAction func plus(){
 number1 = number1 + 1
 dayLabel.text = String(number1)
}
        
@IBAction func minus(){
 number2 = number2 - 1
 dayLabel.text = String(number2)
    
}
}
