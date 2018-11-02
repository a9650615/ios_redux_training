//
//  NavigationAction.swift
//  ReduxTest
//
//  Created by 蔡銘祐 on 2018/11/2.
//  Copyright © 2018 蔡銘祐. All rights reserved.
//

import ReSwift

//extension NavigationState {
//    public static func gotoViewController() -> Store<AppState>.ActionCreator {
//        return { state, store in
//
//        }
//    }
//}

struct GoToViewAction: Action {
    let targetView: String?
    let targetBoard: String! = "Main"
    let type: String! = "push"
}

struct BackViewAction: Action {
    let type: String! = "pop"
}
