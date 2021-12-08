//
//  DetailViewModel.swift
//  List-Cats
//
//  Created by Павел Топорков on 09.12.2021.
//

import SwiftUI


final class DetailViewModel {
    private var imageName: String
    
    init(_ imageName: String) {
        self.imageName = imageName
    }
}


extension DetailViewModel: DeteilViewOutput {
    func getImagePath() -> String {
        return imageName
    }
}
