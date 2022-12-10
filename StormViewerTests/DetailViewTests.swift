//
//  DetailViewTests.swift
//  StormViewerTests
//
//  Created by Fatih Sağlam on 8.12.2022.
//

import XCTest
@testable import StormViewer

final class DetailViewTests: XCTestCase {

    func testDetailImageExists() {
        let sut = DetailViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.imageView)
    }
    
    func testImageFillsTheScreen() {
        let sut = DetailViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.view, sut.imageView)
    }
    
    func testImageViewBackgroundIsWhite() {
        let sut = DetailViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.imageView.backgroundColor, .white)
    }
    
    func testImageViewContentModeIsAspectFit() {
        let sut = DetailViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.imageView.contentMode, .scaleAspectFit)
    }
    
    func testDetailLoadsImage() {
        let filenameToTest = "nssl0049.jpg"
        let imageToLoad = UIImage(named: filenameToTest, in: Bundle.main, compatibleWith: nil)
        
        let sut = DetailViewController()
        
        sut.selectedImage = filenameToTest
        
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.imageView.image, imageToLoad)
    }
    
    func testSelectingImageShowsDetail() {
        // given
        let sut = ViewController()
        let navigationController = UINavigationController(rootViewController: sut)
        let testIndexPath = IndexPath(row: 0, section: 0)

        // when
        sut.tableView(sut.tableView, didSelectRowAt: testIndexPath)

        // create an expectation…
        let expectation = XCTestExpectation(description: "Selecting a table view cell.")
        
        // …then fulfill it asynchronously
        DispatchQueue.main.async {
            expectation.fulfill()
        }
        
        // then
        wait(for: [expectation], timeout: 1)
        XCTAssertTrue(navigationController.topViewController is DetailViewController)
    }

}
