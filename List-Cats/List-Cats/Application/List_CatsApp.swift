//
//  List_CatsApp.swift
//  List-Cats
//
//  Created by Павел Топорков on 08.12.2021.
//

import SwiftUI

@main
struct List_CatsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: .init())
        }
    }
}
