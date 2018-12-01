//
//  ViewController.swift
//  SlideMenu
//
//  Created by Toan on 11/29/18.
//  Copyright © 2018 Toan. All rights reserved.
//  CHECKED
//  Author : Le Toan

import UIKit

class ContainerVC: UIViewController {
    
    
    @IBOutlet weak var slideMenuConstraint: NSLayoutConstraint!
    @IBOutlet weak var coverButton: UIButton!
    
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    @objc
    func toggleSideMenu() {
        if sideMenuOpen {
            sideMenuOpen = false
            slideMenuConstraint.constant = -240
            coverButton.isHidden = true
            
        }   else
        {
            sideMenuOpen = true
            slideMenuConstraint.constant = 0
            coverButton.isHidden = false
        }
        UIView.animate(withDuration: 0.4) {
            self.view.layoutIfNeeded()
        }
    }
    @IBAction func buttonMenu() {
        toggleSideMenu()
    }
    
    
}
