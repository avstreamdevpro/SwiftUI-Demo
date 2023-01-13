//
//  CustomModifier.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/6.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue).clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
            .padding(5)
                .background(Color.black)
        }
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
}


struct CustomModifier: View {
    var body: some View {
//        Text("Custom Modifier").modifier(Title())
//        Text("Custom Modifier").titleStyle()
        Color.blue.frame(width: 300, height: 300)
        .watermarked(with: "Hacking with  Swift")
    }
}

struct CustomModifier_Preview: PreviewProvider {
    static var previews: some View {
        CustomModifier()
    }
}
