//
//  CustomAnimation.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/6.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct CustomAnimation: View {
    @State private var animationAmount: CGFloat = 1
    @State private var isPlus = true
    
    var body: some View {
        Button("Tap Me") {
            
//            if (!self.isPlus) {
//                if (self.animationAmount > 1) {
//                    self.animationAmount -= 1
//                }else {
//                    self.isPlus = true
//                }
//            }else {
//                if (self.animationAmount > 4) {
//                    self.isPlus = false
//                }else {
//                    self.animationAmount += 1
//                }
//            }
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(
                    Animation.easeInOut(duration: 1)
                    .repeatForever(autoreverses: false))
        )
        .onAppear {
                self.animationAmount = 2
        }
//        .scaleEffect(animationAmount)
//        .animation(.default)
//        .animation(.interpolatingSpring(stiffness: 50, damping: 1))
    }
}

struct CustomAnimation_Preview: PreviewProvider {
    static var previews: some View {
        CustomAnimation()
    }
}
