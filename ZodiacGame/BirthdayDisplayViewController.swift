//
//  BirthdayDisplayViewController.swift
//  ZodiacGame
//
//  Created by Rashi Bose on 10/18/17.
//  Copyright © 2017 Rashi Bose. All rights reserved.
//

import UIKit

class BirthdayDisplayViewController: UIViewController {

    @IBOutlet weak var birthdayTitle: UILabel!
    @IBOutlet weak var birthdayDisplayLabel: UILabel!
    var birthdayString = "Something is very wrong."
    var birthdayHeading = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        birthdayDisplayLabel.text = birthdayString
        birthdayTitle.text = birthdayHeading
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
