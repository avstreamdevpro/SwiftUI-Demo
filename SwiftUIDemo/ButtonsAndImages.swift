//
//  ButtonsAndImages.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/6.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct ButtonsAndImages: View {
    
    
    var body: some View {
        VStack(spacing: 12) {
            Button("Tap Me") {
                print("Button was tapped")
            }
            Button(action: {
                print("Button was tapped")
            }) {
                HStack(spacing: 10) {
                    Image(systemName: "pencil")
                    Text("Edit")
                }
            }
            
        }
    }
}

struct ButtonsAndImages_Preview: PreviewProvider {
    static var previews: some View {
        ButtonsAndImages()
    }
}
