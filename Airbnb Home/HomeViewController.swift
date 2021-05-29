//
//  ViewController.swift
//  Airbnb Home
//
//  Created by Frank Bara on 5/21/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var contentView: HomeView = .init()

    override func loadView() {
        view = contentView
    }


}

