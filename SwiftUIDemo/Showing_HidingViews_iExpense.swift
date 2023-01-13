//
//  Showing_HidingViews.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2020/1/13.
//  Copyright © 2020 DRAGON. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var name: String
    var body: some View {
        Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}
struct Showing_HidingViews: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "@twostraw")
        }
    }
}

struct Showing_HidingViews_previews: PreviewProvider {
    static var previews: some View {
        Showing_HidingViews()
    }
}
