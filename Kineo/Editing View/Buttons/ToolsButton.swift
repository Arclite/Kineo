//  Created by Geoff Pado on 3/22/20.
//  Copyright © 2020 Cocoatype, LLC. All rights reserved.

import Foundation

class ToolsButton: SidebarActionButton {
    init() {
        super.init(icon: Icons.tools, selector: #selector(EditingViewController.toggleToolPicker))
        accessibilityLabel = NSLocalizedString("ToolsButton.accessibilityLabel", comment: "Accessibility label for the help button")
    }
}
