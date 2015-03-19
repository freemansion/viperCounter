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

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func setCountLabelText(text: String) {
    
    }
    
    func setDecrementEnabled(enbaled: Bool) {
    
    }
    
    @IBAction func decrementButtonTouch() {
        
    }
    
    @IBAction func incrementButtonTouch() {
        
    }
}