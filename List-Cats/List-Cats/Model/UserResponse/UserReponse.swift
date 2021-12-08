//
//  UserReponse.swift
//  List-Cats
//
//  Created by Павел Топорков on 08.12.2021.
//

import Foundation

struct CatData: Hashable, Codable, Identifiable {
    var id: Int
    var imageName: String
}
