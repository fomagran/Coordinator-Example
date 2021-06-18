//
//  RedViewController.swift
//  Coordinator Example
//
//  Created by Fomagran on 2021/06/18.
//

import UIKit

protocol RedViewControllerDelegate:AnyObject {
    func goToOrangeViewController()
    func goToYellowViewController()
    func goToGreenViewController()
}

class RedViewController: UIViewController,Storyboarded {
    
    weak var delegate: RedViewControllerDelegate?

    @IBOutlet weak var goOrangeButton: UIButton!
    @IBOutlet weak var goYellowButton: UIButton!
    @IBOutlet weak var goGreenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func goToOrange(_ sender: Any) {
        delegate?.goToOrangeViewController()
    }
    
    @IBAction func goToYellow(_ sender: Any) {
        delegate?.goToYellowViewController()
    }
    
    @IBAction func goToGreen(_ sender: Any) {
        delegate?.goToGreenViewController()
    }
}
