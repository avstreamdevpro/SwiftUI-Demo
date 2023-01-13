//
//  EnteringNumber.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/6.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct StepperSample: View {
    
    @State private var sleepAmount = 8.0
    
    var body: some View {
        Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
            Text("\(sleepAmount, specifier: "%g") hours").padding(.leading, 30)
        }.padding(.trailing, 30)
    }
}

struct StepperSample_Preview: PreviewProvider {
    static var previews: some View {
        StepperSample()
    }
}
