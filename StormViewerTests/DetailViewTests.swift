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
        var selectedImage: String?
        let testIndexPath = IndexPath(row: 0, section: 0)

        // when
        sut.pictureSelectAction = {
            selectedImage = $0
        }

        sut.tableView(sut.tableView, didSelectRowAt: testIndexPath)

        // then
        XCTAssertEqual(selectedImage, "nssl0049.jpg")
    }
    
    func testSelectingImageShowsDetailImage() {
        // given
        let sut = ViewController()
        let testIndexPath = IndexPath(row: 0, section: 0)
        let filenameToTest = "nssl0049.jpg"
        let imageToLoad = UIImage(named: filenameToTest, in: Bundle.main, compatibleWith: nil)

        // when
        sut.pictureSelectAction = {
            let detail = DetailViewController()
            detail.selectedImage = $0
            detail.loadViewIfNeeded()
            XCTAssertEqual(detail.imageView.image, imageToLoad)
        }

        sut.tableView(sut.tableView, didSelectRowAt: testIndexPath)
    }

}
