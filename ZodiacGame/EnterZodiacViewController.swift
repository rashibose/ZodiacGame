//
//  EnterZodiacViewController.swift
//  ZodiacGame
//
//  Created by Rashi Bose on 11/2/17.
//  Copyright © 2017 Rashi Bose. All rights reserved.
//

import UIKit

class EnterZodiacViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var game = Game()
    @IBOutlet weak var yearPicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        yearPicker.delegate = self
        yearPicker.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return game.years.count
        }else{
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing reusingView: UIView?) -> UIView {
        print("[viewForRow]")
        let pickerLabel = UILabel()
        pickerLabel.text = game.years[row]
        pickerLabel.textAlignment = NSTextAlignment.center
        return pickerLabel
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let helloController = segue.destination as? ZodiacDisplayViewController {
            let yearValue = Int(game.years[yearPicker.selectedRow(inComponent: 0)])
            //let yearValue = Int(yearPicker.selectedRow(inComponent: 0))
            helloController.zodiacString = game.findZodiac(year: yearValue!)
        }
    }
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
