//
//  Task.swift
//  calandar (iOS)
//
//  Created by Nico Bro on 19.07.22.
//

import SwiftUI

// Task Model und Smaple Tasks...
// Array of Tasks...


struct Task: Identifiable{
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
}

// Total Task Meta View...
struct TaskMetaData: Identifiable{
    var id = UUID().uuidString
    var task: [Task]
    var taskDate: Date
}

// sample Data for Testing...
func getSampleDate (offset: Int)->Date{
    
    let calender = Calendar.current
    
    let date = calender.date(byAdding: .day, value: offset, to: Date())
    
    return date ?? Date()
}

// sample Tasks for Testing..
var tasks: [TaskMetaData] = [

    TaskMetaData(task: [
    
            Task(title: "Talk to Yoana"),
            Task(title: "Go Work more on the app"),
            Task(title: "Meeting with Tim Cook")
    ],      taskDate: getSampleDate(offset: 1)),
    TaskMetaData(task: [
        
            Task(title: "Meeting with Tim Cook")
    ], taskDate: getSampleDate(offset: -8)),
    TaskMetaData (task: [
        
            Task(title: "Next Version of SwiftUI")
            ], taskDate: getSampleDate (offset: 10)),
    TaskMetaData (task: [
        
            Task(title: "Nothing Much Workout !!!")
            ], taskDate: getSampleDate (offset:-22)),
            TaskMetaData(task:[
            Task(title: "iPhone 13 Great Design Change")
            ], taskDate: getSampleDate (offset: 15)),
            TaskMetaData (task: [
            Task(title: "Kavsoft App Updates....")
            ], taskDate: getSampleDate(offset:-20)),
]


