//
//  ViewController.swift
//  Meep
//
//  Created by X on 11/30/16.
//  Copyright © 2016 X. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        print("button pressed")
    }
    
    @IBAction func NextPressed(_ sender: UIButton) {
        print("button pressed")

    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = "Outlets are cool?"
        answerLabel.text = "Yes!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

