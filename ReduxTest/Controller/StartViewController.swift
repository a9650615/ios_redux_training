//
//  StartViewController.swift
//  ReduxTest
//
//  Created by 蔡銘祐 on 2018/11/2.
//  Copyright © 2018 蔡銘祐. All rights reserved.
//

import UIKit
import ReSwift

class StartViewController: UIViewController {

    @IBOutlet weak var popBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        store.subscribe(self) {
            $0.select{
                $0.navigationState
            }
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushAction(_ sender: Any) {
        store.dispatch(GoToViewAction(targetView: "StartView"))
    }
    
    
    @IBAction func popAction(_ sender: Any) {
        store.dispatch(BackViewAction())
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension StartViewController: StoreSubscriber {
    typealias StoreSubscriberStateType = NavigationState
    
    func newState(state: NavigationState) {
        if (state.allRoutes.count <= 1) {
            popBtn.isHidden = true
        } else {
            popBtn.isHidden = false
        }
    }
}
