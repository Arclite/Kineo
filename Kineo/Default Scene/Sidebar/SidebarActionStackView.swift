//  Created by Geoff Pado on 11/16/19.
//  Copyright © 2019 Cocoatype, LLC. All rights reserved.

import UIKit

class SidebarActionStackView: UIStackView {
    init(_ actions: [SidebarActionButton]) {
        super.init(frame: .zero)
        
        axis = .vertical
        spacing = 8.0
        translatesAutoresizingMaskIntoConstraints = false

        actions.forEach(addArrangedSubview(_:))
    }

    // MARK: Boilerplate

    @available(*, unavailable)
    required init(coder: NSCoder) {
        let typeName = NSStringFromClass(type(of: self))
        fatalError("\(typeName) does not implement init(coder:)")
    }
}
