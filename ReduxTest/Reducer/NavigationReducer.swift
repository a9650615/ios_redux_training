//
//  NavigationReducer.swift
//  ReduxTest
//
//  Created by 蔡銘祐 on 2018/11/2.
//  Copyright © 2018 蔡銘祐. All rights reserved.
//

import ReSwift

func navigationReducer(action: Action, state: NavigationState?) -> NavigationState {
    var state = state ?? NavigationState()
    
    switch action {
    case let action as GoToViewAction:
        state.nowRoute = action.targetView
        state.nowBoard = action.targetBoard
        state.type = action.type
    default:
        state.nowRoute = nil
        break
    }
    
    return state
}
