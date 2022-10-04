//
//  ConverterVM.swift
//  NSConverter
//
//  Created by Max Kuznetsov on 21.09.2022.
//

import Foundation

protocol ConverterViewModelProtocol{
    var greeting: String? {get set}
    var callback: ((ConverterViewModelProtocol) -> Void)? {get set}
    func implemente()
}

class ConverterViewModel: ConverterViewModelProtocol{
    var greeting: String?{
        didSet{
            callback!(self)
        }
    }
    
    var callback: ((ConverterViewModelProtocol) -> Void)?
    
    init(){
        greeting = "Hi!"
    }
    
    @objc func implemente() {
        greeting! += "+haha"
        print(greeting!)
    }
    
    
}
