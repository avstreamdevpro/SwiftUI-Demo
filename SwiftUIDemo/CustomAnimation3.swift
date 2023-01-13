//
//  CustomAnimation3.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/8.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct CustomAnimation3: View {
    @State private var animationAmount = 0.0
    var body: some View {
        Button("Tap Me") {
//            withAnimation {
//                self.animationAmount += 360
//            }
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.animationAmount += 360
            }
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
}

struct CustomAnimation3_Preview: PreviewProvider {
    static var previews: some View {
        CustomAnimation3()
    }
}
