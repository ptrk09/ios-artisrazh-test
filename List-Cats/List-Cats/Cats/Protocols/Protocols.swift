//
//  Protocols.swift
//  List-Cats
//
//  Created by Павел Топорков on 08.12.2021.
//

import SwiftUI


protocol CatsViewOutput: AnyObject {
    
    func getCountCats() -> Int
    
    func getCatImagePath(index: Int) -> String
    
    func getHeightCatImage(index: Int) -> CGFloat
    
    func getWidthCatImage(index: Int) -> CGFloat
    
    func getCheckScale(index: Int) -> Bool
    
    func didTapImage(index: Int)
    
    func getButtonOpacity(index: Int) -> CGFloat
    
    var titleNavBar: String { get }
    
    var titleButton: String { get }
}


protocol CatsRouter: AnyObject {
    func getViewModelDitail(index: Int) -> DetailViewModel
}
