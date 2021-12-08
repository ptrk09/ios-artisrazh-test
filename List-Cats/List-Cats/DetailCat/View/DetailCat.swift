//
//  DetailCat.swift
//  List-Cats
//
//  Created by Павел Топорков on 09.12.2021.
//

import SwiftUI

struct DetailCat: View {
    var viewModel: DetailViewModel
    
    var body: some View {
        Image(viewModel.getImagePath())
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct DetailCat_Previews: PreviewProvider {
    static var previews: some View {
        DetailCat(viewModel: .init("cat0"))
    }
}
