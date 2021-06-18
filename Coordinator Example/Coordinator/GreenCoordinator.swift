//
//  GreenCoordinaotr.swift
//  Coordinator Example
//
//  Created by Fomagran on 2021/06/18.
//

import UIKit

class GreenCoordinator:Coordinator {
    
    var navigationController: UINavigationController
    
    var childCoordinators:[Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = GreenViewController.instantiate()
        navigationController.pushViewController(vc, animated: false)
    }
    
}
