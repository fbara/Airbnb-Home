//
//  HomeView.swift
//  Airbnb Home
//
//  Created by Frank Bara on 5/29/21.
//

import Anchorage
import UIKit



class HomeView: ProgrammmaticView{
    private let headerView = HeaderView()
    private lazy var collectionView = makeCollectionView()
    private lazy var dataSource = makeDataSource()

    override func configure() {
        collectionView.backgroundColor = .systemBackground
        collectionView.dataSource = dataSource
    }

    override func constrain() {
        addSubviews(headerView, collectionView)

        headerView.topAnchor == topAnchor
        headerView.horizontalAnchors == horizontalAnchors
        headerView.bottomAnchor == collectionView.topAnchor

        collectionView.horizontalAnchors == horizontalAnchors
        collectionView.bottomAnchor == bottomAnchor
    }

    func apply(_ snapshot: NSDiffableDataSourceSnapshot<Section, Content>) {
        dataSource.apply(snapshot)
    }
}

private extension HomeView {
    func makeCollectionView() -> UICollectionView {
        let layout = UICollectionViewCompositionalLayout { sectionIndex, layoutEnvironment in
            let section = Section.allCases[sectionIndex]
            switch section {
            case .nearby:
                return .sideScrollingTwoItem()
            }
        }

        return UICollectionView(frame: .zero, collectionViewLayout: layout)
    }
}

private extension HomeView {
    func makeDataSource() -> UICollectionViewDiffableDataSource<Section, Content> {
        let registration = SmallSquareCell.registration()
        let dataSource = UICollectionViewDiffableDataSource<Section, Content>(collectionView: collectionView) { view, indexPath, content -> UICollectionViewCell? in
            let section = Section.allCases[indexPath.section]
            switch section {
            case .nearby:

                return view.dequeueConfiguredReusableCell(using: registration, for: indexPath, item: content)
            }
        }

        return dataSource
    }
}
