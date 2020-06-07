//
//  UserSettings.swift
//  ListDetailSwiftUI
//
//  Created by Noah budarf on 2020-06-05.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import Foundation
import SwiftUI

class UserSettings: ObservableObject {
    @Published var imageURL: String = "calculator-9-64"
    @Published var title: String = "Book Title One"
}
