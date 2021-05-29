//
//  UIImage+Helpers.swift
//  Airbnb Home
//
//  Created by Frank Bara on 5/29/21.
//

import UIKit

// allows us to use an optional string without unwrapping it before passing it to the initalizer.
extension UIImage {
    convenience init?(named name: String?) {
        guard let name = name else { return nil }
        self.init(named: name)
    }
}
