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
    
    @IBOutlet weak var colorChangeView: UIView!
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        print("button pressed")
    }
    
    @IBAction func NextPressed(_ sender: UIButton) {
        print("button pressed")

    }
    @IBAction func colorButton(_ sender: UIButton) {
         self.colorChangeView.backgroundColor = UIColor.init(red: 1, green: 0, blue: 1, alpha: 1)
    }
  
    @IBAction func colorButton_touchDown(_ sender: Any) {
             self.colorChangeView.backgroundColor = UIColor.init(red: 0, green: 0, blue: 1, alpha: 1)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorChangeView.backgroundColor = UIColor.blue
        questionLabel.text = "Outlets are cool?"
        answerLabel.text = "Yes!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

