//
//  DatePickerSample.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/6.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct DatePickerSample: View {
    
    @State private var wakeUp = Date()
    
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    var body: some View {
        
//        Form {
//            DatePicker("Please enter Date", selection: $wakeUp)
//        }
//        DatePicker("Please enter Date", selection: $wakeUp).labelsHidden()
//        DatePicker("Please enter Date", selection: $wakeUp, displayedComponents: .hourAndMinute).labelsHidden()
//        DatePicker("Please enter Date", selection: $wakeUp, in: Date()...).labelsHidden()
        
//        let now = Date()
//        let tomorrow = Date().addingTimeInterval(86400)
//        let range = now ... tomorrow
//
//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
//        let date = Calendar.current.date(from: components) ?? Date()
        
//        let components = Calendar.current.dateComponents([.hour, .minute], from: someDate)
//        let hour = components.hour ?? 0
//        let minute = components.minute ?? 0
        
//        let formatter = DateFormatter()
//        formatter.timeStyle = .short
//        let dateString = formatter.string(from: Date())
        
//        return DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute).labelsHidden()
        
        NavigationView {
            VStack {
                Text("when do you want to wake up?").font(.headline)
                
                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute).labelsHidden()
                
                Text("Desired amount of sleep").font(.headline)
                
                Stepper(value: $sleepAmount, in: 4 ... 12, step: 0.25) {
                    Text("\(sleepAmount, specifier:"%g") hours")
                }
                
                Text("Daily coffee intake").font(.headline)
                
                Stepper(value: $coffeeAmount, in: 1 ... 20) {
                    if coffeeAmount == 1 {
                        Text("1 cup")
                    } else {
                        Text("\(coffeeAmount) cups")
                    }
                }
            }
        }.navigationBarTitle("BetterRest")
            .navigationBarItems(trailing:
//                Button("Calculate") {
//                    self.calculateBedtime()
//                }
                Button(action: calculateBedtime) {
                    Text("Calculate")
                }
            )
    }
    
    func calculateBedtime() {
        
    }
}

struct DatePickerSample_Preview: PreviewProvider {
    static var previews: some View {
        DatePickerSample()
    }
}
