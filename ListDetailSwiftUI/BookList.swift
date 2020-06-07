//
//  BookList.swift
//  ListDetailSwiftUI
//
//  Created by Noah budarf on 2020-06-05.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import Foundation
import SwiftUI

struct BookList {
    var id = UUID()
    let imageURL: String
    let title: String
}

struct BookListView: View {
    let bookList: BookList
    
    var body: some View {
        VStack() {
            Image("\(bookList.imageURL)")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(Color.black)
                .frame(width: 64, height: 64)
            Text("\(bookList.title)").lineLimit(2)
                .frame(width: 100)
                .font(.system(size: 12.0))
                .multilineTextAlignment(.center)
        }
    }
}

struct BookListListView: View {
    @EnvironmentObject var settings: UserSettings

    private let bookList: [BookList] =
        [BookList(imageURL: "calculator-9-64", title: "Book Title One"),
         BookList(imageURL: "crown-5-64", title: "Book Title ASDFKASD"),
         BookList(imageURL: "flag-4-64", title: "Book SDF ASDFA SDFE eWEFW fwef"),
         BookList(imageURL: "football-2-64", title: "Booasdf fek Title Oefw w weeer ne"),
         BookList(imageURL: "sun-6-64", title: "Book One"),
         BookList(imageURL: "tire-64", title: "Title Two")]

    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(bookList, id: \.id) { book in
                        BookListView(bookList: book)
                            .frame(width: 100, height: 128)
                            .background(Color.gray)
                            .cornerRadius(25)
                            .padding([.bottom], 10.0)
                            .padding([.trailing], 5.0)
                            
                            .gesture(
                                TapGesture()
                                    .onEnded { _ in
                                        self.settings.imageURL = book.imageURL
                                        self.settings.title = book.title
                                    }
                            )
                }
            }
        }.padding(.leading)
    }
}
