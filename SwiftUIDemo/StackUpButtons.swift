//
//  StackUpButtons.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/6.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct StackUpButtons: View {
    
    @State private var women = ["woman1", "woman2", "woman3", "woman4", "woman5"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of").foregroundColor(.white).font(.title)
                    Text(women[correctAnswer]).foregroundColor(.white).font(.largeTitle).fontWeight(.black)
                }
                
                VStack(spacing: 30) {
                    ForEach(0 ..< 3) { number in
                        Button(action: {
                            self.flagTapped(number)
                        }) {
                            Image(self.women[number]).renderingMode(.original).resizable().frame(width: 200, height: 160, alignment: .center).clipShape(Capsule()).overlay(Capsule().stroke(Color.black, lineWidth: 1)).shadow(color: .black, radius: 5)
                        }
                    }
                }
            }
        }.alert(isPresented: $showingScore) {
            Alert(title: Text(scoreTitle), message: Text("Your score is ???"), dismissButton: .default(Text("Continue"), action: {
                self.askQuestion()
            }))
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        women.shuffled()
        correctAnswer = Int.random(in: 0...2)
    }
}


struct StackUpButtons_Preview: PreviewProvider {
    static var previews: some View {
        StackUpButtons()
    }
}
