//
//  LoadingResourcesFromBundle.swift
//  SwiftUIDemo
//
//  Created by DRAGON on 2019/12/6.
//  Copyright © 2019 DRAGON. All rights reserved.
//

import SwiftUI

struct LoadingResourcesFromBunddle: View {
    var body: some View {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            // we found the file in our bundle
            if let fileContents = try? String(contentsOf: fileURL) {
                // we loaded the file into a string
            }
        }
        return Text("HHH")
    }
}


struct LoadingResouresFromBunddle_Preview: PreviewProvider {
    static var previews: some View {
        LoadingResourcesFromBunddle()
    }
}
