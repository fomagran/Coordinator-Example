//
//  OrangeViewController.swift
//  Coordinator Example
//
//  Created by Fomagran on 2021/06/18.
//

import UIKit

class OrangeViewController: UIViewController ,Storyboarded{
    
    var coordinator: OrangeCoordinator?
    
    var navTitle:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func pushGreen(_ sender: Any) {
        coordinator?.pushGreenViewController()
    }
    
    @IBAction func presentGreen(_ sender: Any) {
        coordinator?.presentGreenViewController()
    }
}
