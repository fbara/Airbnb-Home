//
//  SmallSquareCell.swift
//  Airbnb Home
//
//  Created by Frank Bara on 6/11/21.
//

import Anchorage
import UIKit

typealias SmallSquareCell = ContentCell<SmallSquareView>

final class SmallSquareView: ProgrammmaticView, ContentConfiguringView {
    
    private let imageView = UIImageView()
    private let stack = UIStackView()
    private let titleLabel = UILabel()
    private let subtitleLabel = UILabel()

    override func configure() {
        imageView.backgroundColor = .secondarySystemFill
        imageView.layer.cornerRadius = 8
        imageView.layer.masksToBounds = true

        stack.axis = .vertical
        stack.spacing = 8

        titleLabel.font = .custom(style: .headline)
        subtitleLabel.font = .custom(style: .subheadline)
    }

    override func constrain() {
        addSubviews(imageView, stack)
        stack.addArrangedSubviews(titleLabel, subtitleLabel)

        imageView.verticalAnchors == verticalAnchors
        imageView.leadingAnchor == leadingAnchor
        imageView.widthAnchor == imageView.heightAnchor

        stack.leadingAnchor == imageView.trailingAnchor + 10
        stack.trailingAnchor == trailingAnchor
        stack.centerYAnchor == centerYAnchor
    }

    func configure(with content: Content?) {
        titleLabel.text = content?.title
        subtitleLabel.text = content?.subtitle
        imageView.image = UIImage(named: content?.image)
        
    }
}


    
//    static func registration() -> UICollectionView.CellRegistration<SmallSquareCell, Content> {
//        UICollectionView.CellRegistration<SmallSquareCell, Content> {
//            cell, _, content in
//            cell.configure(with: content)
//        }
//
//    }
