//
//  AppDependencies.swift
//  SBViperCount
//
//  Created by Stas Baranovskiy on 3/19/15.
//  Copyright (c) 2015 Stas Baranovskiy. All rights reserved.
//

import Foundation
import UIKit

class AppDependencies {
    var countViewController = SBCountViewController()
    
    init() {
        configureDependencies()
    }
        
    func installRootViewControllerIntoWindow(window: UIWindow?) {
        window?.rootViewController = countViewController
    }
    
    func configureDependencies() {
        var interactor = SBCountInteractor()
        var presenter = SBCountPresenter()
        var view = self.countViewController
        
        view.presenter = presenter
        presenter.userInterface = view
        
        presenter.interactor = interactor
        interactor.output = presenter
        
        
    }
}