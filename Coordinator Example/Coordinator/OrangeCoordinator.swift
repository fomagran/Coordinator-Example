//
//  OrangeCoordinator.swift
//  Coordinator Example
//
//  Created by Fomagran on 2021/06/18.
//

import UIKit

class OrangeCoordinator:Coordinator {
    
    var navigationController: UINavigationController
    
    var childCoordinators:[Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = OrangeViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func presentGreeViewController() {
        let green = GreenCoordinator(navigationController: navigationController)
        green.start()
    }
    
    func pushGreenViewController() {
        let vc = GreenViewController.instantiate()
        navigationController.pushViewController(vc,animated: true)
    }
}
