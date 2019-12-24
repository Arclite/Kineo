//  Created by Geoff Pado on 12/24/19.
//  Copyright © 2019 Cocoatype, LLC. All rights reserved.

import UIKit

class FilmStripView: UIControl, UICollectionViewDelegate {
    init(dataSource: EditingViewDataSource) {
        self.dataSource = FilmStripDataSource(dataSource: dataSource)
        super.init(frame: .zero)

        backgroundColor = .filmStripBackground
        layer.cornerRadius = 10
        layer.masksToBounds = true
        translatesAutoresizingMaskIntoConstraints = false

        collectionView.dataSource = self.dataSource
        collectionView.delegate = self
        addSubview(collectionView)

        NSLayoutConstraint.activate([
            collectionView.widthAnchor.constraint(equalTo: widthAnchor),
            collectionView.heightAnchor.constraint(equalTo: heightAnchor),
            collectionView.centerXAnchor.constraint(equalTo: centerXAnchor),
            collectionView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    func reloadData() {
        collectionView.reloadData()
    }

    // MARK: UICollectionViewDelegate

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if dataSource.isNewPage(indexPath) {
            sendAction(#selector(EditingViewController.addNewPage), to: nil, for: nil)
        }
    }

    // MARK: Boilerplate

    private let collectionView = FilmStripCollectionView()
    private let dataSource: FilmStripDataSource

    @available(*, unavailable)
    required init(coder: NSCoder) {
        let typeName = NSStringFromClass(type(of: self))
        fatalError("\(typeName) does not implement init(coder:)")
    }
}
