//
//  UIView+Helpers.swift
//  Airbnb Home
//
//  Created by Frank Bara on 5/29/21.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { view in addSubview(view) }
    }
}
