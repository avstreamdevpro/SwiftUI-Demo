//
//  AnimateGesture.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/8.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct AnimateGesture: View {
//    @State private var dragAmount = CGSize.zero
//
//    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width:300, height:200)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .offset(dragAmount)
//        .gesture(
//            DragGesture()
//                .onChanged { self.dragAmount = $0.translation }
//                .onEnded { _ in
//                    withAnimation(.spring()) {
//                        self.dragAmount = .zero
//                    }
//                }
//        )
////        .animation(.spring())
//    }
    
    //-------------------------
    
    let letters = Array("Hello SwiftUI")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count) { num in
                Text(String(self.letters[num]))
                .padding(5)
                    .font(.title)
                    .background(self.enabled ? Color.blue : Color.red)
                    .offset(self.dragAmount)
                    .animation(Animation.default.delay(Double(num) / 20))
            }
        }
    .gesture(
        DragGesture()
            .onChanged { self.dragAmount = $0.translation }
            .onEnded { _ in
                self.dragAmount = .zero
                self.enabled.toggle()
        }
        )
    }
}

struct AnimateGesture_Preview: PreviewProvider {
    static var previews: some View {
        AnimateGesture()
    }
}
