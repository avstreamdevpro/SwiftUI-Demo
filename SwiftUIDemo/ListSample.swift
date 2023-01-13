//
//  ListSample.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/6.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct ListSample: View {
    
////------------
//
//    let people = ["Finn", "Leia", "Lucy", "Alisha"]
//
//    var body: some View {
////        List {
////            Section(header: Text("Section 1")) {
////                Text("Statci row 1")
////                Text("Statci row 2")
////            }
////
////            Section(header: Text("Section 2")) {
////                ForEach(0 ..< 3) {
////                    Text("Dynamic row \($0)")
////                }
////            }
////
////            Section(header: Text("Section 3")) {
////                Text("Static row 3")
////            }
////        }.listStyle(GroupedListStyle())
//
////        List(people, id: \.self) {
////            Text($0)
////        }.listStyle(GroupedListStyle())
//
//        List{
//            ForEach(people, id: \.self) {
//                Text($0)
//            }
//        }.listStyle(GroupedListStyle())
//    }
//}
//
//// ------------
    
    
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    
    
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var showingError = false
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter your word", text: $newWord, onCommit:addNewWord).textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none).padding()
                List(usedWords, id: \.self) {
                    Image(systemName: "\($0.count).circle")
                    Text($0)
                }
            }
            }.navigationBarTitle(rootWord)
            .onAppear(perform: startGame)
            .alert(isPresented: $showingError) {
                Alert(title: Text(errorTitle), message: Text(errorMessage), dismissButton: .default(Text("OK")))
        }
    }
    
    func addNewWord() {
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        guard answer.count > 0 else {
            return
        }
        
        guard isOriginal(word: answer) else {
            wordError(title: "word used already", message: "Be more original")
            return
        }
        
        guard isPossible(word: answer) else {
            wordError(title: "Word not recognized", message: "You can't just make them up, you know!")
            return
        }
        
        guard isReal(word: answer) else {
            wordError(title: "Word not possible", message: "That isn't a real word")
            return
        }
        usedWords.insert(answer, at: 0)
        newWord = ""
    }
    
    func startGame() {
//        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
//            if let startWords = try? String(contentsOf: startWordsURL) {
//                let allWords = startWords.components(separatedBy: "\n")
//                rootWord = allWords.randomElement() ?? "silkworm"
//                return
//            }
//        }
//
//        fatalError("Couldn't load start.txt from bundle.")
    }
    
    func isOriginal(word: String) -> Bool {
        !usedWords.contains(word)
    }
    
    func isPossible(word: String) -> Bool {
        var tempWord = rootWord.lowercased()
        
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
            }
        }
        
        return true
    }
    
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        return misspelledRange.location == NSNotFound
    }
    
    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        showingError = true
    }
}


struct ListSample_Preview: PreviewProvider {
    static var previews: some View {
        ListSample()
    }
}
