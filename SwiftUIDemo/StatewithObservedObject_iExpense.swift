//
//  StatewithObservedObject.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2020/1/13.
//  Copyright © 2020 DRAGON. All rights reserved.
//

import SwiftUI

class UserB: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct StatewithObservedObject: View {
    @ObservedObject private var user = UserB()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName).")
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
    }
}

struct StatewithObservedObject_previews: PreviewProvider {
    static var previews: some View {
        StatewithObservedObject()
    }
}
