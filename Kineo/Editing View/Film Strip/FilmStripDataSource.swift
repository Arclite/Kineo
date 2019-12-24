//  Created by Geoff Pado on 12/24/19.
//  Copyright © 2019 Cocoatype, LLC. All rights reserved.

import UIKit

class FilmStripDataSource: NSObject, UICollectionViewDataSource {
    init(dataSource: EditingViewDataSource) {
        self.dataSource = dataSource
    }

    // MARK: UICollectionViewDataSource

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.pageCount
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: FilmStripExistingPageCell.identifier, for: indexPath)
    }

    // MARK: Boilerplate

    private let dataSource: EditingViewDataSource
}
