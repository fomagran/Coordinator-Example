//
//  RedViewController.swift
//  Coordinator Example
//
//  Created by Fomagran on 2021/06/18.
//

import UIKit

class RedViewController: UIViewController,Storyboarded {
    
    weak var coordinator: RedCoordinator?

    @IBOutlet weak var goOrangeButton: UIButton!
    @IBOutlet weak var goYellowButton: UIButton!
    @IBOutlet weak var goGreenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func goToOrange(_ sender: Any) {
        coordinator?.goToOrangeViewController()
    }
    
    @IBAction func goToYellow(_ sender: Any) {
        coordinator?.goToYellowViewController()
    }
    
    @IBAction func goToGreen(_ sender: Any) {
        coordinator?.goToGreenViewController()
    }
}
