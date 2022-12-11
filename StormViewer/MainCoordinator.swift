//
//  MainCoordinator.swift
//  StormViewer
//
//  Created by Fatih Sağlam on 11.12.2022.
//

import Foundation
import UIKit

class MainCoordinator {
    var navigationController = UINavigationController()

    func start() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        guard let viewController = storyboard.instantiateInitialViewController() as? ViewController else {
            fatalError("Missing initial view controller in Main.storyboard.")
        }

        navigationController.pushViewController(viewController, animated: false)
    }
}
