//
//  ViewController.swift
//  StormViewer
//
//  Created by Fatih Sağlam on 8.12.2022.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        addImages()
    }
    
    func addImages() {
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)

        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
    }

}

