//
//  ContentView.swift
//  ListDetailSwiftUI
//
//  Created by Noah budarf on 2020-06-05.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack(alignment: .leading) {
                Text("Your Library")
                    .bold()
                    .font(.system(size: 24.0))
                    .padding(.leading)
                    .padding(.top)
                BookDetailView()
                BookListListView()
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
