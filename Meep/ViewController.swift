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
    @IBOutlet weak var nameButton: UIButton!
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    let quizBank = [
        ("What is a fat hippo?", "A fat hippo"),
        ("Meep moop beep boop", "YAYAYAYYAYAYAYAYAYYAYAYAYA")
    ]
    
    let nameBank = [
        "Monkeyface", "Giraffeface", "Hippoface", "SlothLips", "WalrusTeeth"
    ]
    
    let numberBank = [ "1","2","3","4","5"]
    
    var currentQuestion = 0
    var currentName = 0
    var currentNumber = 0
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        print("answer button pressed")
        if answerLabel.isHidden == false {
            answerLabel.isHidden = true
        } else {
            answerLabel.isHidden = false
        }
    }
    
    @IBAction func NextPressed(_ sender: UIButton) {
        print("button pressed")
        if currentQuestion < quizBank.count - 1{
            currentQuestion += 1
        } else {
            currentQuestion = 0
        }
        updateUI()
    }
    
    @IBAction func colorButton(_ sender: UIButton) {
         self.colorChangeView.backgroundColor = UIColor.init(red: 1, green: 0, blue: 1, alpha: 1)
    }
  
    @IBAction func colorButton_touchDown(_ sender: Any) {
             self.colorChangeView.backgroundColor = UIColor.init(red: 0, green: 0, blue: 1, alpha: 1)
    }
    
    
    @IBAction func nameButton_touchUp(_ sender: UIButton) {
        if currentName < nameBank.count - 1{
            currentName += 1
        } else {
            currentName = 0
        }
        updateName()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorChangeView.backgroundColor = UIColor.blue
        self.questionLabel.text = "Outlets are cool?"
        self.answerLabel.text = "Yes!"
        updateUI()
        updateName()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateUI(){
        self.questionLabel.text = self.quizBank[currentQuestion].0
        self.answerLabel.text = self.quizBank[currentQuestion].1
        self.answerLabel.isHidden = true
    }
    func updateName(){
        self.nameText.text = self.nameBank[Int(arc4random_uniform(5))]
        self.numberLabel.text = self.numberBank[Int(arc4random_uniform(5))]
        if self.numberLabel.text == "1" || self.numberLabel.text == "2"{
            self.numberLabel.textColor = UIColor.red
        }
        else if self.numberLabel.text == "3" || self.numberLabel.text == "4" {
            self.numberLabel.textColor = UIColor.orange
        }
        else {
            self.numberLabel.textColor = UIColor.green
        }
    }
}

