//
//  HomeViewcontroller.swift
//  HOME DVA
//
//  Created by nguyễn hữu đạt on 2/26/19.
//  Copyright © 2019 nguyễn hữu đạt. All rights reserved.
//

import UIKit
import Firebase
import FirebaseRemoteConfig

//FireBaseRemoteConfig

class HomeViewcontroller: BaseViewController {
    
    @IBOutlet weak var bannerStr: UILabel!
    
    private var remoteConfig: RemoteConfig!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupRemoteConfig()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        fetchAndActivateRemoteConfig()
    }
    
    /// Initializes defaults from `RemoteConfigDefaults.plist` and sets config's settings to developer mode
    private func setupRemoteConfig() {
      remoteConfig = RemoteConfig.remoteConfig()
      remoteConfig.setDefaults(fromPlist: "RemoteConfigDefaults")

      let settings = RemoteConfigSettings()
      settings.minimumFetchInterval = 0
      remoteConfig.configSettings = settings
    }
    
    /// Fetches and activates remote config values
    @objc
    private func fetchAndActivateRemoteConfig() {
      remoteConfig.fetchAndActivate { status, error in
        guard error == nil else { return self.displayError(error) }
        print("Remote config successfully fetched & activated!")
        DispatchQueue.main.async {
            self.bannerStr.text = self.remoteConfig["Name"].stringValue
            print("TTTT\(self.remoteConfig["Name"].stringValue)")
//          self.updateUI()
        }
      }
    }
    
    public func displayError(_ error: Error?, from function: StaticString = #function) {
      guard let error = error else { return }
      print("🚨 Error in \(function): \(error.localizedDescription)")
      let message = "\(error.localizedDescription)\n\n Ocurred in \(function)"
      let errorAlertController = UIAlertController(
        title: "Error",
        message: message,
        preferredStyle: .alert
      )
      errorAlertController.addAction(UIAlertAction(title: "OK", style: .default))
      present(errorAlertController, animated: true, completion: nil)
    }


}

