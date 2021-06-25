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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateList()
    }

    private func updateList() {
        var snapShot = NSDiffableDataSourceSnapshot<Section, Content>()
        
        snapShot.appendSections(Section.allCases)
        Section.allCases.forEach {
            snapShot.appendItems($0.stubData(), toSection: $0)
        }
        
        contentView.apply(snapShot)
    }

}

