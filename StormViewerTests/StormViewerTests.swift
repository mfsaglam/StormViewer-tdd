//
//  StormViewerTests.swift
//  StormViewerTests
//
//  Created by Fatih Sa─člam on 8.12.2022.
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
    
    func testTableViewHasCorrectAmountOfCells() {
        let sut = ViewController()
        
        sut.loadViewIfNeeded()
        let rowCount = sut.tableView.numberOfRows(inSection: 0)
        
        XCTAssertEqual(rowCount, sut.pictures.count)
    }
    
    func testEachCellHasTheCorrectText() {
        let sut = ViewController()

        sut.loadViewIfNeeded()

        for (index, picture) in sut.pictures.enumerated() {
            let indexPath = IndexPath(item: index, section: 0)
            let cell = sut.tableView(sut.tableView, cellForRowAt: indexPath)
            XCTAssertEqual(cell.textLabel?.text, picture)
        }
    }
    
    func testEachCellHasTheDisclosureInd─▒cator() {
        let sut = ViewController()

        sut.loadViewIfNeeded()

        for index in sut.pictures.indices {
            let indexPath = IndexPath(item: index, section: 0)
            let cell = sut.tableView(sut.tableView, cellForRowAt: indexPath)
            XCTAssertEqual(cell.accessoryType, .disclosureIndicator)
        }
    }
    
    func testViewControllerUsesLargeTitles() {
        let sut = ViewController()
        let _ = UINavigationController(rootViewController: sut)

        sut.loadViewIfNeeded()

        XCTAssertTrue(sut.navigationController?.navigationBar.prefersLargeTitles ?? false)
    }
    
    func testViewControllerHasCorrectTitle() {
        let sut = ViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.title, "Storm Viewer")
    }
}
