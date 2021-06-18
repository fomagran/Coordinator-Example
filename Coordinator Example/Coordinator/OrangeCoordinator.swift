//
//  OrangeCoordinator.swift
//  Coordinator Example
//
//  Created by Fomagran on 2021/06/18.
//

import UIKit

class OrangeCoordinator:Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = OrangeViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func presentGreenViewController() {
        let vc = GreenViewController.instantiate()
        self.navigationController.present(vc, animated: true)
    }
    
    func pushGreenViewController() {
        let vc = GreenViewController.instantiate()
        self.navigationController.pushViewController(vc, animated: true)
    }
}
