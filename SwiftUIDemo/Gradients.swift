//
//  Gradients.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/6.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
//        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200).edgesIgnoringSafeArea(.all)
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .pink]), center: .center)
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
