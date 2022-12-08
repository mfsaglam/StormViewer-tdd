//
//  StormViewerTests.swift
//  StormViewerTests
//
//  Created by Fatih Sağlam on 8.12.2022.
//

import XCTest
@testable import StormViewer

final class StormViewerTests: XCTestCase {

    func testLoadingImages() {
        let sut = ViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.pictures.count, 10, "There should be 10 images.")
    }
    
    func testTableViewExists() {
        let sut = ViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.tableView)
    }
}
