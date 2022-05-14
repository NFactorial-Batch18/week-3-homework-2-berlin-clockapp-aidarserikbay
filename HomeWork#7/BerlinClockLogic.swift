//
//  main.swift
//  HomeWork#2
//
//  Created by Bibigul Aubakirova on 01.05.2022.
//

import Foundation

class BerlinClockLogic {
    
    init(){
        print("Welcome to Berlin Clock Kata")
        getHoursInput()
        getMinutesInput()
        getSecondsInput()
    }
    
    func getHoursInput(){
        print("Please enter amount of hours")
        if let hours = readLine(){
            let fiveHoursRow = TimeConverter.getFiveHoursLine(Int(hours)!)
            let oneHoursRow = TimeConverter.getOneHoursLine(Int(hours)!)
            print(fiveHoursRow)
            print(oneHoursRow)
        }
    }
    
    func getMinutesInput(){
        print("Please enter amount of minutes")
        if let minutes = readLine(){
            let fiveMinutesRow = TimeConverter.getFiveMinutesLine(Int(minutes)!)
            let oneMinutesRow = TimeConverter.getOneMinutesLine(Int(minutes)!)
            print(fiveMinutesRow)
            print(oneMinutesRow)
        }
    }
    
    func getSecondsInput(){
        print("Please enter amount of seconds")
        if let seconds = readLine(){
            let secondBulp = TimeConverter.getSeconds(Int(seconds)!)
            print(secondBulp)
        }
    }
}

class TimeConverter {
    
    static func getFiveHoursLine(_ hours: Int) -> [Bool] {
        return getLights(hours/5, totalCountOfBulps: 4)
    }
    
    static func getOneHoursLine(_ hours: Int) -> [Bool]{
        return getLights(hours % 5, totalCountOfBulps: 4)
    }
    
    static func getFiveMinutesLine(_ minutes: Int) -> [Bool]{
        return getLights(minutes / 5, totalCountOfBulps: 11)
    }
    
    static func getOneMinutesLine(_ minutes: Int) -> [Bool]{
        return getLights(minutes % 5, totalCountOfBulps: 4)
    }
    
    static func getSeconds(_ seconds: Int) -> [Bool]{
        var array: [Bool] = []
        if seconds % 2 == 0 {
            array.append(true)
        } else {
            array.append(false)
        }
        return array
    }
}

// when I applied static func as in your example following error showed up "Static methods may only be declared on a type"
func getLights (_ turnedOn: Int, totalCountOfBulps: Int) -> [Bool] {
    let onBulps = Array(repeating: true, count: turnedOn)
    let offBulps = Array(repeating: false, count: totalCountOfBulps-turnedOn)
    return onBulps + offBulps
}

let berlinClock = BerlinClockLogic()

// it's basically your code that you showed on office hours, but I used it to understand the logic
// I am not counting on grades
