//
//  ViewController.swift
//  find my age
//
//  Created by alwyn tablatin on 25/03/2018.
//  Copyright © 2018 alwyn tablatin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelFindMyAge: UILabel!
    
    @IBOutlet weak var textFindMyAge: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func findmyagePressed(_ sender: UIButton) {
        let age : Int = Int(textFindMyAge.text!)!
        let date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        
        let myAge = year - age
        labelFindMyAge.text = "YOUR AGE IS \(myAge) YEARS OLD"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

