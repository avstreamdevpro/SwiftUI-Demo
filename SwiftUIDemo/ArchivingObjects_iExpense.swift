//
//  ArchivingObjects_iExpense.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2020/1/13.
//  Copyright © 2020 DRAGON. All rights reserved.
//

import SwiftUI

struct UserC: Codable {
    var firstName: String
    var lastName: String
}

struct ArchivingObjects_iExpense: View {
    @State private var user = UserC(firstName: "Taylor", lastName: "Swift")
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(self.user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

struct ArchivingObjects_iExpense_Previews: PreviewProvider {
    static var previews: some View {
        ArchivingObjects_iExpense()
    }
}
