//
//  ColorsAndFrames.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/6.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct ColorsAndFrames: View {
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            Color.yellow.frame(width: 200, height: 300, alignment: .center)
            Color.init(red: 1.0, green: 0.7, blue: 0.0).frame(width: 200, height: 200, alignment: .top)
        }
    }
}

struct ColorsAndFrames_Previews: PreviewProvider {
    static var previews: some View {
        ColorsAndFrames()
    }
}
