//
//  BookDetail.swift
//  ListDetailSwiftUI
//
//  Created by Noah budarf on 2020-06-05.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import Foundation
import SwiftUI

struct BookDetailView:View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        VStack() {
            Image("\(settings.imageURL)")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(Color.black)
                .padding()
                .gesture(
                    TapGesture()
                        .onEnded { _ in

                        }
                )
            Text("\(settings.title)").lineLimit(2)
                .font(.system(size: 12.0))
                .multilineTextAlignment(.center)
                .padding()
            
        }.background(Color.gray)
        .cornerRadius(25)
        .padding()
        
    }
}
