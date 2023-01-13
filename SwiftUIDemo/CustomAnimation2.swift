//
//  CustomAnimation2.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/7.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct CustomAnimation2: View {
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        
        print(animationAmount)
        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(
                Animation.easeInOut(duration: 1).repeatCount(3, autoreverses: true)), in: 1...10)
            
            Spacer()
            
            Button("Tap me") {
                self.animationAmount += 1
            }
            .padding(40)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
            
        }
    }
}

struct CustomAnimation2_Preview: PreviewProvider {
    static var previews: some View {
        CustomAnimation2()
    }
}
