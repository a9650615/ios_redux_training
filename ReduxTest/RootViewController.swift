//
//  ViewController.swift
//  ReduxTest
//
//  Created by 蔡銘祐 on 2018/11/1.
//  Copyright © 2018 蔡銘祐. All rights reserved.
//

import UIKit
import ReSwift

class RootViewController: UINavigationController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        store.subscribe(self) {
            $0.select{
                $0.navigationState
            }
        }
        store.dispatch(GoToViewAction(targetView: "StartView"))
    }

    func gotoView(_ viewName: String, boardName: String = "Main") {
        let vc = UIStoryboard(name: boardName, bundle: nil).instantiateViewController(withIdentifier: viewName)
        self.pushViewController(vc, animated: true)
    }

}

extension RootViewController: StoreSubscriber {
    typealias StoreSubscriberStateType = NavigationState
    
    func newState(state: NavigationState) {
        if (state.type == "push" && !(state.nowRoute ?? "").isEmpty) {
            print("go to \(String(describing: state.nowRoute)) page")
            gotoView(String(state.nowRoute ?? ""))
        } else {
            print("no page")
        }
    }
}
