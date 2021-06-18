//
//  RedCoordinator.swift
//  Coordinator Example
//
//  Created by Fomagran on 2021/06/18.
//

import UIKit

class RedCoordinator:Coordinator {

    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
          self.navigationController = navigationController
      }

      func start() {
          let vc = RedViewController.instantiate()
            vc.delegate = self
          navigationController.pushViewController(vc, animated: false)
      }
}

extension RedCoordinator:RedViewControllerDelegate {
    func goToOrangeViewController() {
        let coordinator = OrangeCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    func goToYellowViewController() {
  
    }
    
    func goToGreenViewController() {
        let coordinator = GreenCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
