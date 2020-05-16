//
//  ViewController.swift
//  craftyBlankState
//
//  Created by craftycoders on 05/15/2020.
//  Copyright (c) 2020 craftycoders. All rights reserved.
//

import UIKit
import craftyBlankState

enum BlankStateCase {
    case noInternet, emptyResults
}

class ViewController: UIViewController, CraftyBlankStatable {
    var blankStateView: CraftyBlankStateView! = CraftyBlankStateView()
    var blankState: BlankStateCase = .emptyResults
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blankStateView.dataSource = self
        self.view = blankStateView
        blankStateView.refresh()
    }

}

extension ViewController: CraftyBlankStateDataSource {
    func image(in blankStateView: CraftyBlankStateView) -> UIImage? {
        //an enum and switch statement can be used if multiple blank state cases exist
        switch blankState {
        case .emptyResults:
            return nil//return any image you want
        case .noInternet:
            return nil //return any image you want
        }
    }
    
    func message(in blankStateView: CraftyBlankStateView) -> String {
        //an enum and switch statement can be used if multiple blank state cases exist
        switch blankState {
        case .emptyResults:
            return "Nothing to see here right now. Come back later."
        case .noInternet:
            return "Please check your internet connection and try again"
        }
    }
    
    func font(in blankStateView: CraftyBlankStateView) -> UIFont {
        //an enum and switch statement can be used if multiple blank state cases exist
        switch blankState {
        case .emptyResults:
            return UIFont.systemFont(ofSize: 17, weight: .medium)
        case .noInternet:
            return UIFont.systemFont(ofSize: 17, weight: .bold)
        }
    }
    
}

