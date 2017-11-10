//
//  ViewController.swift
//  personalGameApp
//
//  Created by Rashi Bose on 9/20/17.
//  Copyright © 2017 Rashi Bose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var game = Game()
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var monthNumber: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var dayNumber: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var yearNumber: UITextField!
    @IBOutlet weak var zodiacDisplay: UILabel!
    @IBOutlet weak var zodiacLabel: UILabel!
    @IBOutlet weak var answerDisplay: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var monthIncrementer: UIStepper!
    @IBOutlet weak var dayIncrementer: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        monthIncrementer.wraps = true
        monthIncrementer.autorepeat = true
        monthIncrementer.maximumValue = 12
        monthIncrementer.minimumValue = 1
        dayIncrementer.wraps = true
        dayIncrementer.autorepeat = true
        dayIncrementer.maximumValue = 31
        dayIncrementer.minimumValue = 1
        monthLabel.text = "Month Number"
        dayLabel.text = "Day Number"
        yearLabel.text = "Year"
        answerLabel.text = "Your birthday in 2017 was/will be on:"
        zodiacLabel.text = "Your Chinese Zodiac is:"
        monthNumber.text = "1"
        dayNumber.text = "1"
        answerDisplay.text = ""
        zodiacDisplay.text = ""
        //game.play()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func monthStepper(_ sender: UIStepper) {
        monthNumber.text = Int(sender.value).description
    }
    
    @IBAction func dayStepper(_ sender: UIStepper) {
        dayNumber.text = Int(sender.value).description
    }
    
    @IBAction func findDay(_ sender: UIButton) {
        if let monthValue = Int(monthNumber.text!),
            let dayValue = Int(dayNumber.text!),
            let yearValue = Int(yearNumber.text!){
            //answerDisplay.text = game.findDay(month: monthValue, date: dayValue)
        }else{
            let alertController = UIAlertController(title: "Invalid Input!", message:
                "Please enter a valid year!", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func findZodiac(_ sender: UIButton) {
        if let value = yearNumber.text {
            if let yearValue = Int(value){
                zodiacDisplay.text = game.findZodiac(year: yearValue)
            }
        }
    }
    
}



