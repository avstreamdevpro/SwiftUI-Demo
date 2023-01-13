//
//  Deletingitems_iExpense.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2020/1/13.
//  Copyright © 2020 DRAGON. All rights reserved.
//

import SwiftUI

struct Deletingitems_iExpense: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("\($0)")
                    }
                .onDelete(perform: removeRows)
                }
                
                Button("Add Number") {
                    self.numbers.append(self.currentNumber)
                    self.currentNumber += 1
                }
            }
        }
    .navigationBarItems(leading: EditButton())
    }
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

struct Deletingitems_iExpense_Previews: PreviewProvider {
    static var previews: some View {
        Deletingitems_iExpense()
    }
}
