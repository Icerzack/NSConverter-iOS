//
//  ViewControllerFactory.swift
//  NSConverter
//
//  Created by Max Kuznetsov on 19.09.2022.
//

import UIKit

enum ViewControllerType{
    case converter
    case calculator
    
    func viewController() -> UIViewController{
        switch self {
        case .converter:
            return ConverterViewController()
        case .calculator:
            return CalculatorViewController()
        }
    }
}

class ViewControllerFactory{
    static func viewController(for typeOfVC: ViewControllerType) -> UIViewController{
        let vc = typeOfVC.viewController()
        return vc
    }
}
