//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Fatih Sağlam on 8.12.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    let imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        imageView.backgroundColor = .white
        view = imageView
    }

}
