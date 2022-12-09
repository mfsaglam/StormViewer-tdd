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

}
