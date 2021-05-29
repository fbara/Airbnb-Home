//
//  ProgrammaticView.swift
//  Airbnb Home
//
//  Created by Frank Bara on 5/29/21.
//

import UIKit

class ProgrammmaticView: UIView {
    @available(*, unavailable, message: "Don't user init(coder:), override init(frame:) instead")
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        constrain()
    }
    
    func configure() {}
    func constrain() {}
}
