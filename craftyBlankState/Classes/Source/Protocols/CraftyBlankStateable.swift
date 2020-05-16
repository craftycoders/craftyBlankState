//
//  CraftyBlankStateable.swift
//  craftyBlankState
//
//  Created by Lyle Jover on 5/15/20.
//

import Foundation

public protocol CraftyBlankStateDataSource {
    func image(in blankStateView: CraftyBlankStateView) -> UIImage?
    func message(in blankStateView: CraftyBlankStateView) -> String
    func font(in blankStateView: CraftyBlankStateView) -> UIFont
}

public protocol CraftyBlankStatable: CraftyBlankStateDataSource {
    var blankStateView: CraftyBlankStateView! { get set }
}

