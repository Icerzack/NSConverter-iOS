//
//  Converter.swift
//  NSConverter
//
//  Created by Max Kuznetsov on 21.09.2022.
//

import Foundation

protocol NSConverterProtocol {
    func convert(from: Int, radixFrom: Int)
}

struct NSConverter: NSConverterProtocol {
    func convert(from: Int, radixFrom: Int) {
        let fromNum = from
        let result = String(from, radix: radixFrom)
    }
    
    
}
