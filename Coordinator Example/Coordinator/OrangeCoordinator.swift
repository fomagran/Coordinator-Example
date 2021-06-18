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
        navigationController.pushViewController(vc, animated: false)
    }
    
    func presentGreeViewController() {
        
    }
    
    func pushGreenViewController() {
        
    }
}
