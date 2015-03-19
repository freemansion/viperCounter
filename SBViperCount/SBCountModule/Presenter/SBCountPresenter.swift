//
//  SBCountPresenter.swift
//  SBViperCount
//
//  Created by Stas Baranovskiy on 3/19/15.
//  Copyright (c) 2015 Stas Baranovskiy. All rights reserved.
//

import Foundation

class SBCountPresenter : NSObject, SBCountInteractorOutput, SBCountPresenterInterface {
    var userInterface: SBCountViewInterface?
    var interactor: SBCountInteractorInput?
    var formatter: NSFormatter?
    
    func increment() {
        
    }
    
    func decrement() {
        
    }
    
    func updateView() {
        
    }
    
    func setCount(number: Int) {

    }

    
    
}