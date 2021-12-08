//
//  CatCell.swift
//  List-Cats
//
//  Created by Павел Топорков on 08.12.2021.
//

import SwiftUI

struct CatCell: View {
    @ObservedObject var viewModel: ViewModelCats
    let index: Int
    
    var body: some View {
        VStack(
            alignment: .trailing,
            spacing: Defines.shared.size.spacingBetweenElementCell
        ){
            Image(viewModel.getCatImagePath(index: index))
                .resizable()
                .frame(
                    width: viewModel.getHeightCatImage(index: index),
                    height: viewModel.getHeightCatImage(index: index)
                )
                .gesture(
                    TapGesture()
                        .onEnded { _ in
                            withAnimation(.linear) {
                                viewModel.didTapImage(index: index)
                            }
                        }
                )
            
            NavigationLink(
                destination: DetailCat(
                    viewModel: viewModel.getViewModelDitail(
                        index: index
                    )
                )
            ) {
                Text(viewModel.titleButton)
            }
            .opacity(viewModel.getButtonOpacity(index: index))

        }
    }
}

struct CatCell_Previews: PreviewProvider {
    static var previews: some View {
        CatCell(viewModel: .init(), index: 0)
    }
}
