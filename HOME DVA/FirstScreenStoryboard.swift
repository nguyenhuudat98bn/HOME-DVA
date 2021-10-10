//
//  FirstScreenStoryboard.swift
//  HOME DVA
//
//  Created by nguyễn hữu đạt on 2/26/19.
//  Copyright © 2019 nguyễn hữu đạt. All rights reserved.
//

import UIKit

class FirstScreenStoryboard: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "HOME DVA"
        self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 240, green: 240, blue: 240, alpha: 1)
        setupView()
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupView()

    }
    func setupView(){
        let popUpView = Bundle.main.loadNibNamed("PopupFirstView", owner: self, options: nil)?.first as? PopupFirstView
        popUpView?.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        self.view.addSubview(popUpView!)
    }

    
    @IBAction func gotoHome(_ sender: Any) {
        let homeVC = HomeViewcontroller()
        self.navigationController?.pushViewController(homeVC, animated: true)
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
