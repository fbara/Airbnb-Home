//
//  HeaderView.swift
//  Airbnb Home
//
//  Created by Frank Bara on 5/29/21.
//

import Anchorage
import UIKit

class HeaderView: ProgrammmaticView {
    override func configure() {
        backgroundColor = .systemTeal
    }
    
    override func constrain() {
        heightAnchor == 100
    }
}
