//
//  Fonts.swift
//  Spot
//
//  Created by Emre Çakır on 6.07.2023.
//

import Foundation


import UIKit

enum Fonts: String {
    
    enum FontSize: CGFloat {
        case size8 = 8
        case size9 = 9
        case size10 = 10
        case size12 = 12
        case size13 = 13
        case size14 = 14
        case size15 = 15
        case size16 = 16
        case size17 = 17
        case size18 = 18
        case size22 = 22
        case size28 = 28
    }

    case bold = "Arimo-Bold"
    case boldItalic = "Arimo-BoldItalic"
    case italic = "Arimo-Italic"
    case medium = "Arimo-Medium"
    case mediumItalic = "Arimo-MediumItalic"
    case regular = "Arimo-Regular"
    case semiBold = "Arimo-SemiBold"
    case semiBoldItalic = "Arimo-SemiBoldItalic"

    func of(_ size: FontSize) -> UIFont {
        UIFont(name: self.rawValue, size: size.rawValue)!
    }
}
