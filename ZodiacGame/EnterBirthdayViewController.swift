//
//  EnterBirthdayViewController.swift
//  ZodiacGame
//
//  Created by Rashi Bose on 10/25/17.
//  Copyright © 2017 Rashi Bose. All rights reserved.
//

import UIKit

class EnterBirthdayViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var game = Game()
    @IBOutlet weak var dayMonthPicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        dayMonthPicker.delegate = self
        dayMonthPicker.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            print (12)
            return game.months.count
        }else if component == 1{
            print (31)
            return game.days.count
        }else{
            return game.years1.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing reusingView: UIView?) -> UIView {
        print("[viewForRow]")
        if component == 0{
            let pickerLabel = UILabel()
            pickerLabel.text = game.months[row]
            pickerLabel.textAlignment = NSTextAlignment.left
            return pickerLabel
        }else if component == 1{
            let pickerLabel1 = UILabel()
            pickerLabel1.text = game.days[row]
            pickerLabel1.textAlignment = NSTextAlignment.center
            return pickerLabel1
        } else {
            let pickerLabel2 = UILabel()
            pickerLabel2.text = game.years1[row]
            pickerLabel2.textAlignment = NSTextAlignment.right
            return pickerLabel2
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let helloController = segue.destination as? BirthdayDisplayViewController {
            let monthValue = dayMonthPicker.selectedRow(inComponent: 0) + 1
            let dayValue = dayMonthPicker.selectedRow(inComponent: 1) + 1
            let yearValue = Int(game.years1[dayMonthPicker.selectedRow(inComponent: 2)])
            let leapTest = yearValue!/4
            let value : String = String(describing: yearValue!)
            
            if (monthValue == 2 && dayValue == 31){
                let alertController = UIAlertController(title: "Invalid Input!", message:
                    "February doesn't have 31 days.", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController, animated: true, completion: nil)
                
            } else if (monthValue == 2 && dayValue == 30){
                let alertController = UIAlertController(title: "Invalid Input!", message:
                    "February doesn't have 30 days.", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController, animated: true, completion: nil)
                
            } else if (monthValue == 2 && dayValue == 29 && leapTest != 0) {
                let alertController = UIAlertController(title: "Invalid Input!", message:
                    "February only has 29 days when it is a leap year. The year you have entered is not a leap year.", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController, animated: true, completion: nil)
                
            } else if (monthValue == 4 && dayValue == 31) {
                let alertController = UIAlertController(title: "Invalid Input!", message:
                    "April only has 30 days.", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController, animated: true, completion: nil)
                
            }else if (monthValue == 6 && dayValue == 31) {
                let alertController = UIAlertController(title: "Invalid Input!", message:
                    "June only has 30 days.", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController, animated: true, completion: nil)
                
            } else if (monthValue == 9 && dayValue == 31) {
                let alertController = UIAlertController(title: "Invalid Input!", message:
                    "September only has 30 days.", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController, animated: true, completion: nil)
                
            } else if (monthValue == 11 && dayValue == 31) {
                let alertController = UIAlertController(title: "Invalid Input!", message:
                    "November only has 31 days.", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
                self.present(alertController, animated: true, completion: nil)
                
            }else {
                helloController.birthdayString = game.findDay(month: monthValue, date: dayValue, year1: yearValue!)
                helloController.birthdayHeading = "Your birthday in " + value + " will be on:"
            }
            
    }
    }

    
//    func pickerView(_pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
//        if component == 0{
//            return game.months[row]
//        }else{
//            return game.days[row]
//        }
//    }
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    //}
       // let month = dayMonthPicker.selectedRow(inComponent: 0)
        //let day = dayMonthPicker.selectedRow(inComponent: 1)
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


