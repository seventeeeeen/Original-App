//
//  ViewController1.swift
//  Original App
//
//  Created by 河本珠奈 on 2020/09/13.
//  Copyright © 2020 Kawamoto Juna. All rights reserved.
//

import UIKit

class CountViewController: UIViewController {
    
    var number: Int = 0
    
    @IBOutlet var contentTextView: UITextView!
    @IBOutlet var eventLabel: UILabel!
    @IBOutlet var changeLabel: UILabel!
    @IBOutlet var dayLabel: UILabel!
    @IBOutlet var nichiLabel: UILabel!
    
    var saveData: UserDefaults = UserDefaults.standard


    override func viewDidLoad() {
        super.viewDidLoad()
        
        eventLabel = saveData.object(forKey: "event") as? UILabel
        dayLabel = saveData.object(forKey: "dayr") as! UILabel
        contentTextView.text = saveData.object(forKey: "content") as? String

        // Do any additional setup after loading the view.
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

}
    
    
func plus(){
    number = number + 1
    dayLabel.text = String(number)
    }
        
func minus(){
        number = number - 1
        dayLabel.text = String(number)
    }

