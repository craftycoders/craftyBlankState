//
//  CraftyBlankStateView.swift
//  craftyBlankState
//
//  Created by Lyle Jover on 5/15/20.
//

import UIKit

public class CraftyBlankStateView: UIView {

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
    
    public func setBackgroundColor(color: UIColor) {
        self.backgroundColor = color
    }

}
