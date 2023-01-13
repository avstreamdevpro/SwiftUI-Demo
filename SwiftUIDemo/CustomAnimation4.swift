//
//  CustomAnimation4.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/8.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct CustomAnimation4: View {
    @State private var enabled = true
    
    var body: some View {
        Button("Tap Me") {
            self.enabled.toggle()
        }
        .frame(width:200, height:200)
        .background(enabled ? Color.blue : Color.red)
        .animation(.default)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1))
    }
}

struct CustomAnimation4_Preview: PreviewProvider {
    static var previews: some View {
        CustomAnimation4()
    }
}
