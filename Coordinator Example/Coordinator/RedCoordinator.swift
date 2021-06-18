//
//  RedCoordinator.swift
//  Coordinator Example
//
//  Created by Fomagran on 2021/06/18.
//

import UIKit

class RedCoordinator:Coordinator {
    
    var navigationController: UINavigationController
    
    var childCoordinators:[Coordinator] = []
    
    init(navigationController: UINavigationController) {
          self.navigationController = navigationController
      }

      func start() {
          let vc = RedViewController.instantiate()
            vc.coordinator = self
          navigationController.pushViewController(vc, animated: false)
      }
    
    func goToOrangeViewController() {
        let vc = OrangeViewController.instantiate()
        vc.navTitle = "Orange"
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToYellowViewController() {
        let vc = YellowViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToGreenViewController() {
        let vc = GreenViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }
}
