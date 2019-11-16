//  Created by Geoff Pado on 11/16/19.
//  Copyright © 2019 Cocoatype, LLC. All rights reserved.

import UIKit

struct GalleryNavigationAction: SidebarAction {
    var icon: UIImage? { return Icons.gallery }
    var selector: Selector { return #selector(SceneViewController.showGallery) }
    var target: Any? { return nil }
}

struct ExportAction: SidebarAction {
    var icon: UIImage? { return Icons.export }
    var selector: Selector { return #selector(EditingViewController.exportVideo) }
    var target: Any? { return nil }
}

struct PlayAction: SidebarAction {
    var icon: UIImage? { return Icons.play }
    var selector: Selector { return #selector(EditingViewController.playOneLoop) }
    var target: Any? { return nil }
}

struct PreviousPageAction: SidebarAction {
    var icon: UIImage? { return Icons.previousPage }
    var selector: Selector { return #selector(EditingViewController.retreatPage) }
    var target: Any? { return nil }
}

struct NextPageAction: SidebarAction {
    var icon: UIImage? { return Icons.nextPage }
    var selector: Selector { return #selector(EditingViewController.advancePage) }
    var target: Any? { return nil }
}
