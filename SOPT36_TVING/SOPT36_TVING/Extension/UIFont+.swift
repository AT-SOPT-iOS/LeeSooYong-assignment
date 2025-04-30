//
//  UIFont+.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 4/23/25.
//

import UIKit

extension UIFont {
    static func pretendard(size fontSize: CGFloat, weight: UIFont.Weight) -> UIFont {
        let familyName = "Pretendard"
        
        var weightString: String
        switch weight {
        case .bold:
            weightString = "Bold"
        case .medium:
            weightString = "Medium"
        case .regular:
            weightString = "Regular"
        case .semibold:
            weightString = "SemiBold"
        default:
            weightString = "Regular"
        }
        
        let font = UIFont(name: "\(familyName)-\(weightString)", size: fontSize) ?? .systemFont(ofSize: fontSize, weight: weight)
        return font
    }
}
