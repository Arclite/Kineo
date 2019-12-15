//  Created by Geoff Pado on 7/14/19.
//  Copyright © 2019 Cocoatype, LLC. All rights reserved.

import Foundation

class DocumentEditor: NSObject {
    init(document: Document) {
        self.document = document
        super.init()
    }

    // MARK: Editing

    func addPage() {
        let newIndex = currentIndex + 1
        document = document.insertingBlankPage(at: newIndex)
        currentIndex = newIndex
        documentStore.save(document)
    }

    func replaceCurrentPage(with newPage: Page) {
        document = document.replacingPage(atIndex: currentIndex, with: newPage)
        documentStore.save(document)
    }

    // MARK: Navigation

    var advancingWouldCreateNewPage: Bool {
        let lastPageIndex = document.pages.endIndex - 1
        let currentPage = document.pages[currentIndex]
        return currentIndex == lastPageIndex && currentPage.hasDrawing
    }

    func advancePage() {
        if advancingWouldCreateNewPage {
            addPage()
        } else {
            currentIndex = min(currentIndex + 1, document.pages.endIndex - 1)
        }
    }

    func retreatPage() {
        currentIndex = max(currentIndex - 1, document.pages.startIndex)
    }

    // MARK: Boilerplate

    private let documentStore = DocumentStore()

    private(set) var document: Document
    private(set) var currentIndex = 0
    var currentPage: Page {
        return document.pages[currentIndex]
    }
}
