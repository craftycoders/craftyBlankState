//
//  ViewController.swift
//  craftyBlankState
//
//  Created by craftycoders on 05/15/2020.
//  Copyright (c) 2020 craftycoders. All rights reserved.
//

import UIKit
import craftyBlankState

class ViewController: UIViewController, CraftyBlankStatable {
    var blankStateView: CraftyBlankStateView! = CraftyBlankStateView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = blankStateView
        blankStateView.setBackgroundColor(color: UIColor.blue)
    }

}

