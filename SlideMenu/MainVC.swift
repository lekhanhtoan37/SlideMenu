//
//  MainVC.swift
//  SlideMenu
//
//  Created by Toan on 11/30/18.
//  Copyright © 2018 Toan. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    override func viewDidLoad() {
        NotificationCenter.default.addObserver(self, selector: #selector(showProfile), name: NSNotification.Name("ShowProfile"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showSettings), name: NSNotification.Name("ShowSettings"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showSignIn), name: NSNotification.Name("ShowSignIn"), object: nil)

    }
    @objc
    func showProfile() {
            performSegue(withIdentifier: "ShowProfile", sender: nil)
    }
    @objc
    func showSettings() {
        performSegue(withIdentifier: "ShowSettings", sender: nil)
    }
    @objc
    func showSignIn() {
        performSegue(withIdentifier: "ShowSignIn", sender: nil)
    }
    
    @IBAction func onMoreTapped() {
        print("Toggle slide menu")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
    }
}
