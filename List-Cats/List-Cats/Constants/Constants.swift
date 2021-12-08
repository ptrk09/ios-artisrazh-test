//
//  Constants.swift
//  List-Cats
//
//  Created by Павел Топорков on 09.12.2021.
//

import SwiftUI

final class Defines {
    static let shared: Defines = Defines()
    
    let size: SizeConstants = SizeConstants()
    let buttonConstants: ButtonConstants = ButtonConstants()
    let textConstants: TextConstants = TextConstants()
    
    init() {}
}
