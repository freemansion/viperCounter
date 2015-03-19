//
//  SBCountPresenterInterface.swift
//  SBViperCount
//
//  Created by Stas Baranovskiy on 3/19/15.
//  Copyright (c) 2015 Stas Baranovskiy. All rights reserved.
//

import Foundation

protocol SBCountPresenterInterface {
    func updateView()
    func increment()
    func decrement()
}