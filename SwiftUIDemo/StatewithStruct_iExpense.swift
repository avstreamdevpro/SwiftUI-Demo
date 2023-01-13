//
//  StateIExpense.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2020/1/13.
//  Copyright © 2020 DRAGON. All rights reserved.
//

import SwiftUI

struct UserA {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}

struct StatewithStruct: View {
    
    @State private var user = UserA()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName).")
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
    }
}

struct StatewithStruct_Previews: PreviewProvider {
    static var previews: some View {
        StatewithStruct()
    }
}
