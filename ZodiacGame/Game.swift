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
    
    let years = ["1960", "1961", "1962", "1963", "1964", "1965", "1966", "1967", "1968", "1969", "1970", "1971", "1972", "1973", "1974", "1975", "1976", "1977", "1978", "1979", "1980", "1981", "1982", "1983", "1984", "1985", "1986", "1987", "1988", "1989", "1990", "1991", "1992", "1993", "1994", "1995", "1996", "1997", "1998", "1999", "2000", "2001", "2002", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018"]
    
    let years1 = ["2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030", "2031", "2032", "2033", "2034", "2035", "2036", "2037", "2038", "2039", "2040", "2041", "2042", "2043", "2044", "2045", "2046", "2047", "2048", "2049", "2050", "2051", "2052"]
    
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
    
    func getYear1() -> Int {
        print("Enter Year of your birthday and then press Enter:")
        let input = readLine()
        if let input = input {
            if let year1 = Int(input){
                return year1
            } else {
                return 0
            }
        } else {
            return 0
        }
    }
    
    func findLeapYear(year1: Int) -> Int {
        let referenceYear = 2016
        let leap = (year1 - referenceYear)/4
        return leap
    }
    
    func differenceInYears(year1: Int) -> Int {
        let difference = (year1 - 2017) * 365
        return difference
    }
    
    func compareDates(month:Int,date:Int, difference: Int) -> Int {
        let referenceDate = 1
        let referenceMonth = 1
        let januaryDays = 31
        let februaryDays = 28
        let marchDays = 31
        let aprilDays = 30
        let mayDays = 31
        let juneDays = 30
        let julyDays = 31
        let augustDays = 31
        let septemberDays = 30
        let octoberDays = 31
        let novemberDays = 30
        //let month = getMonth()
        //let date = getDate()
        if (month == referenceMonth && date == referenceDate){
            return 0
        }else if (month == referenceMonth && date < 7) {
            return 7 - (date-1)
        }else if (month == referenceMonth && date > 7) {
            return (date - 1) % 7
        }else if (month == 2){
            return ((januaryDays) + (date))%7
        }else if (month == 3){
            return (((januaryDays + februaryDays) + difference) + (date))%7
        }else if (month == 4){
            return (((januaryDays + februaryDays + marchDays) + difference) + (date))%7
        }else if (month == 5){
            return (((januaryDays + februaryDays + marchDays + aprilDays)+difference) + (date))%7
        }else if (month == 6){
            return (((januaryDays + februaryDays + marchDays + aprilDays + mayDays) + difference) + (date))%7
        }else if (month == 7){
            return (((januaryDays + februaryDays + marchDays + aprilDays + mayDays + juneDays) + difference) + (date))%7
        }else if (month == 8){
            return (((januaryDays + februaryDays + marchDays + aprilDays + mayDays + juneDays + julyDays) + difference) + (date))%7
        }else if (month == 9){
            return (((januaryDays + februaryDays + marchDays + aprilDays + mayDays + juneDays + julyDays + augustDays) + difference) + (date))%7
        }else if (month == 10){
            return (((januaryDays + februaryDays + marchDays + aprilDays + mayDays + juneDays + julyDays + augustDays + septemberDays) + difference) + (date))%7
        }else if (month == 11){
            return (((januaryDays + februaryDays + marchDays + aprilDays + mayDays + juneDays + julyDays + augustDays + septemberDays + octoberDays) + difference) + (date))%7
        }else {//if (month == 12)
            return (((januaryDays + februaryDays + marchDays + aprilDays + mayDays + juneDays + julyDays + augustDays + septemberDays + octoberDays + novemberDays) + difference) + (date))%7
        }
    }
    
    func findDay(month:Int,date:Int, year1: Int) -> String {
        let difference = differenceInYears(year1: year1)
        let input = compareDates(month: month, date: date, difference: difference)
        let leap = findLeapYear(year1: year1)
        let aList = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
        let value = aList[input + leap]
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
    
    
//    func play() {
//        print("Welcome to \(self.name())")
//        let month = getMonth()
//        let date = getDate()
//        let Year = getYear()
//        let dayOfTheWeek = findDay(month: month, date: date, year1: years1)
//        print ("Your Birthday this year will be on a \(dayOfTheWeek).")
//        let play = getZodiac()
//        if(play == "y") {
//            let zodiacYear = findZodiac(year: Year)
//            print ("Your Chinese zodiac is \(zodiacYear).")
//        }
//    }
}


