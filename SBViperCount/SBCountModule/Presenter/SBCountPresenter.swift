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
    var formatter: NSNumberFormatter? {
        get {
            var spellOutFormatter = NSNumberFormatter()
            spellOutFormatter.numberStyle = NSNumberFormatterStyle.SpellOutStyle
            return spellOutFormatter
        }
    }
    
    //MARK: View interface
    func updateView() {
        self.interactor?.requestCount()
    }
    
    func increment() {
        self.interactor?.increment()
    }
    
    func decrement() {
        self.interactor?.decrement()
    }

    func updateCount(number: Int) {
        self.userInterface?.setCountLabelText(formattedCount(number))
        self.userInterface?.setDecrementEnabled(canDecrementCount(number))
    }
    
    func formattedCount(number: Int) -> String! {
        return formatter?.stringFromNumber(number)
    }
    
    func canDecrementCount(number: Int) -> Bool {
        return number > 0
    }
    
    
    
    
}