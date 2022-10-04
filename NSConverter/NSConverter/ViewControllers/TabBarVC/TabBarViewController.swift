//
//  TabBarController.swift
//  LocationApp
//
//  Created by Max Kuznetsov on 18.07.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
}
