//
//  Coordinator.swift
//  Coordinator Example
//
//  Created by Fomagran on 2021/06/18.
//

import UIKit

protocol Coordinator {
    
    var navigationController: UINavigationController { get set }

    func start()
}
