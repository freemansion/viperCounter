//
//  SBCountViewController.swift
//  SBViperCount
//
//  Created by Stas Baranovskiy on 3/19/15.
//  Copyright (c) 2015 Stas Baranovskiy. All rights reserved.
//

import Foundation
import UIKit

@objc(SBCountViewController) class SBCountViewController: UIViewController, SBCountViewInterface {
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    var presenter: SBCountPresenter?

    // MARK: Life cycle 
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.presenter?.updateView()
    }
    
    // MARK: Count View
    
    func setCountLabelText(text: String) {
    self.countLabel.text = text
    }
    
    func setDecrementEnabled(enabled: Bool) {
    self.decrementButton.enabled = enabled
    }
    
    // MARK: Actions
    
    @IBAction func decrementButtonTouch() {
    self.presenter?.decrement()
    }
    
    @IBAction func incrementButtonTouch() {
        self.presenter?.increment()
    }
}