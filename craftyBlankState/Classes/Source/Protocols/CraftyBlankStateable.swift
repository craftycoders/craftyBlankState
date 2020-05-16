//
//  CraftyBlankStateable.swift
//  craftyBlankState
//
//  Created by Lyle Jover on 5/15/20.
//

import Foundation

protocol CraftyBlankStateDataSource {
   
}

public protocol CraftyBlankStatable {
    var blankStateView: CraftyBlankStateView! { get set }
}
