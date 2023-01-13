//
//  StacksView.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/6.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            
            Text("Hello World")
            Text("This is another text view")
            
            HStack(spacing:12) {
                Text("Text1")
                Text("Text2")
            }.background(Color.red)
            
            ZStack {
                Text("This is ZStack").background(Color.green)
                Text("This is Second ZStack").background(Color.blue)
            }
        }
    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        StacksView()
    }
}
