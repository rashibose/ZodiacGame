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
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return game.months.count
        }else{
            return game.days.count
        }
    }
    func pickerView(_pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        if component == 0{
            return game.months[row]
        }else{
            return game.days[row]
        }
    }
    
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


