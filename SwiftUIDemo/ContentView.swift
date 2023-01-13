//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/2.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount = 0
    @State private var name = ""
    @State private var selectedStudent = "Harry"
    
    let students = ["Harry", "Herimione", "Ron"]
    
    @State private var isActive = false
    
    var totalPercent: Double {
        let tip = Double(100 / 2)
        return tip
    }
    
    var body: some View {
        NavigationView {
            
            Form {
                NavigationLink(destination: StacksView(), isActive: $isActive) {
                    Button("Next"){
                        
                    }
                }
                
                Group{
                    Text("Group")
                }
                Section {
                    Text("Section")
                    Button("TapCount \(tapCount)"){
                        self.tapCount += 1
                    }
                }
                Section(header: Text("Personal Info")){
                    TextField("Enter your name", text: $name)
                    Text(name)

                    ForEach(0 ..< 3) {
                        Text("Contact \($0)")
                    }

                    Picker("Select your student", selection: $selectedStudent) {
                        ForEach(0 ..< students.count) {
                            Text(self.students[$0])
                        }
                    }.pickerStyle(SegmentedPickerStyle())

                }

            }.navigationBarTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

