//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Fatih Sağlam on 8.12.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    let imageView = UIImageView()
    var selectedImage: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleAspectFit
        view = imageView
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }

}
