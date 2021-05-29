//
//  UIStackView+Helpers.swift
//  Airbnb Home
//
//  Created by Frank Bara on 5/29/21.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach { view in addArrangedSubview(view) }
    }
}
