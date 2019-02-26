//
//  BaseViewController.swift
//  HOME DVA
//
//  Created by nguyễn hữu đạt on 2/26/19.
//  Copyright © 2019 nguyễn hữu đạt. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    var cusTomNavi: NavigationBase? {
        return navigationController as? NavigationBase
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
