//
//  CraftBlankStateView.swift
//  craftyBlankState_Tests
//
//  Created by Lyle Jover on 5/15/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class CraftyBlankStateView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialSetup()
    }
    
    private func initialSetup() {
        setBackgroundColor(color: UIColor.green)
    }
    
    func setBackgroundColor(color: UIColor) {
        self.backgroundColor = color
    }

}
