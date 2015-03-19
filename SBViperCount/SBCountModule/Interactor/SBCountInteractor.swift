//
//  SBCountInteractor.swift
//  SBViperCount
//
//  Created by Stas Baranovskiy on 3/19/15.
//  Copyright (c) 2015 Stas Baranovskiy. All rights reserved.
//

import Foundation

class SBCountInteractor: NSObject, SBCountInteractorInput {
    var output : SBCountInteractorOutput?
    var number : Int = 0
    
    func decrement() {
        if canDecrement() {
            --number
            updateNumber()
        }
    }
    
    func increment() {
        ++number
        updateNumber()
    }
    
    func canDecrement() -> Bool {
        return number > 0
    }
    
    func updateNumber() {
        output?.setCount(number)
    }
}