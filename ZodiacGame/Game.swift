//
//  gameLogic.swift
//  personalGameApp
//
//  Created by Rashi Bose on 9/22/17.
//  Copyright © 2017 Rashi Bose. All rights reserved.
//

import Foundation

class Game {
    
    let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    let days = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]
    
    func name() -> String {
        return "Birthday Game!"
    }
    
    func getMonth() -> Int {
        print("Enter the Month Number of your Birthday and then press Enter:")
        let input = readLine()
        if let input = input {
            if let month = Int(input){
                return month
            } else {
                return 0
            }
        } else {
            return 0
        }
    }
    
    func getDate() -> Int {
        print("Enter date of your birthday and then press Enter:")
        let input = readLine()
        if let input = input {
            if let date = Int(input){
                return date
            } else {
                return 0
            }
        } else {
            return 0
        }
    }
    
    func getYear() -> Int {
        print("Enter Year of your birthday and then press Enter:")
        let input = readLine()
        if let input = input {
            if let year = Int(input){
                return year
            } else {
                return 0
            }
        } else {
            return 0
        }
    }
    
    
    
    func compareDates(month:Int,date:Int) -> Int {
        let referenceDate = 1
        let referenceMonth = 1
        //let month = getMonth()
        //let date = getDate()
        if (month == referenceMonth && date == referenceDate){
            return 0
        }else if (month == referenceMonth && date < 7) {
            return 7 - (date-1)
        }else if (month == referenceMonth && date > 7) {
            return (date - 1) % 7
        }else if (month == 2){
            return (30 + date)%7
        }else if (month == 3){
            return (58 + date)%7
        }else if (month == 4){
            return (89 + date)%7
        }else if (month == 5){
            return (119 + date)%7
        }else if (month == 6){
            return (150 + date)%7
        }else if (month == 7){
            return (180 + date)%7
        }else if (month == 8){
            return (211 + date)%7
        }else if (month == 9){
            return (242 + date)%7
        }else if (month == 10){
            return (272 + date)%7
        }else if (month == 11){
            return (303 + date)%7
        }else {//if (month == 12)
            return (333 + date)%7
        }
    }
    
    func findDay(month:Int,date:Int) -> String {
        let input = compareDates(month: month, date: date)
        let aList = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
        let value = aList[input]
        return value
    }
    
    func compareZodiac(year:Int) -> Int {
        return year%12
    }
    
    func findZodiac(year:Int) -> String {
        let input1 = compareZodiac(year:year)
        let aList1 = ["Monkey", "Rooster", "Dog", "Pig", "Rat", "Ox", "Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat"]
        let value1 = aList1[input1]
        return value1
    }
    
    func getZodiac() -> String {
        print("Do you want to know your Chinese Zodiac? Enter y or n:")
        let answer = readLine()
        if let answer = answer {
            if (answer.lowercased() != "y") {
                return "n"
            }
        }
        return "y"
    }
    
    
    func play() {
        print("Welcome to \(self.name())")
        let month = getMonth()
        let date = getDate()
        let Year = getYear()
        let dayOfTheWeek = findDay(month: month, date: date)
        print ("Your Birthday this year will be on a \(dayOfTheWeek).")
        let play = getZodiac()
        if(play == "y") {
            let zodiacYear = findZodiac(year: Year)
            print ("Your Chinese zodiac is \(zodiacYear).")
        }
    }
}


