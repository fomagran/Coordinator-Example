//
//  OrangeViewController.swift
//  Coordinator Example
//
//  Created by Fomagran on 2021/06/18.
//

import UIKit

class OrangeViewController: UIViewController ,Storyboarded{
    
    weak var coordinator: OrangeCoordinator?
    
    var navTitle:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = navTitle
    }

    @IBAction func pushGreen(_ sender: Any) {
        coordinator?.pushGreenViewController()
    }
    
    @IBAction func presentGreen(_ sender: Any) {
        print("??")
        coordinator?.presentGreeViewController()
    }
}
