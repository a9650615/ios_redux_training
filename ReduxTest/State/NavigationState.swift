//
//  NavigationState.swift
//  ReduxTest
//
//  Created by 蔡銘祐 on 2018/11/2.
//  Copyright © 2018 蔡銘祐. All rights reserved.
//

import Foundation
import ReSwift

struct NavigationState: StateType {
    var nowRoute: String? = nil
    var nowBoard: String! = "Main"
    var type: String! = "push"
}
