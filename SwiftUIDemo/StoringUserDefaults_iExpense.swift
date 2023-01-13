//
//  StoringUserDefaults_iExpense.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2020/1/13.
//  Copyright © 2020 DRAGON. All rights reserved.
//

import SwiftUI

struct StoringUserDefaults_iExpense: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    var body: some View {
        Button("Tap count: \(tapCount)") {
            self.tapCount += 1
            UserDefaults.standard.set(self.tapCount, forKey: "Tap")
        }
    }
}


struct StoringUserDefaults_iExpense_previews: PreviewProvider {
    static var previews: some View {
        StoringUserDefaults_iExpense()
    }
}
