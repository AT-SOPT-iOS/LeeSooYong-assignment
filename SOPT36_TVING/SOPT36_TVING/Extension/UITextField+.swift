//
//  UITextField+.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 4/23/25.
//

import UIKit

extension UITextField {
    func setPlaceholderColor(_ placeholderColor: UIColor) {
        attributedPlaceholder = NSAttributedString(
            string: placeholder ?? "",
            attributes: [
                .foregroundColor: placeholderColor,
                .font: font
            ].compactMapValues { $0 }
        )
    }
}
