//
//  ContentView.swift
//  List-Cats
//
//  Created by Павел Топорков on 08.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    let viewModel: ViewModelCats
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical) {
                ForEach((0..<viewModel.getCountCats())) { index in
                    CatCell(
                        viewModel: viewModel, index: index
                    )
                }
                .frame(maxWidth: .infinity)
            }
            .navigationTitle(viewModel.titleNavBar)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView(
            viewModel: .init()
        )
    }
}
