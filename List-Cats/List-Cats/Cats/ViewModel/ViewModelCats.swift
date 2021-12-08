//
//  ViewModelCats.swift
//  List-Cats
//
//  Created by Павел Топорков on 08.12.2021.
//

import SwiftUI


final class ViewModelCats: ObservableObject {
    @Published var cats: [CatData] = loadData("dataForCats.json")
    @Published var scaleCats: [Bool] = [Bool]()
    
    init() {
        initScaleCats()
    }
    
    
    private func initScaleCats() {
        scaleCats = cats.map { _ in
            return false
        }
    }
}


extension ViewModelCats: CatsViewOutput {
    var titleNavBar: String {
        return Defines.shared.textConstants.titleNavBar
    }
    
    var titleButton: String {
        return Defines.shared.textConstants.titleButton
    }
    
    func getCountCats() -> Int {
        return cats.count
    }
    
    
    func getCatImagePath(index: Int) -> String {
        return cats[index].imageName
    }
    
    
    func getCheckScale(index: Int) -> Bool {
        return scaleCats[index]
    }
    
    
    func didTapImage(index: Int) {
        for ind in 0 ..< getCountCats() {
            if ind == index {
                scaleCats[ind] = !scaleCats[ind]
                continue
            }
            scaleCats[ind] = false
        }
    }
    
    
    func getButtonOpacity(index: Int) -> CGFloat {
        let opacityByDefualtImage = Defines.shared.buttonConstants.defaultButtonOpacity
        let opacityByScaleImage = Defines.shared.buttonConstants.editButtonOpacity
        
        return getCheckScale(index: index) ? opacityByScaleImage : opacityByDefualtImage
    }
    
    
    func getHeightCatImage(index: Int) -> CGFloat {
        let defualtHeight = Defines.shared.size.defualtHeight
        let scaleHeight = Defines.shared.size.defualtHeight * Defines.shared.size.scaleCellImage
        
        return getCheckScale(index: index) ? scaleHeight : defualtHeight
    }
    
    
    func getWidthCatImage(index: Int) -> CGFloat {
        let defualtWidth = Defines.shared.size.defualtWidth
        let scaleWidth = Defines.shared.size.defualtWidth * Defines.shared.size.scaleCellImage
        
        return getCheckScale(index: index) ? scaleWidth : defualtWidth
    }
}


extension ViewModelCats: CatsRouter {
    func getViewModelDitail(index: Int) -> DetailViewModel {
        return DetailViewModel(cats[index].imageName)
    }
}
