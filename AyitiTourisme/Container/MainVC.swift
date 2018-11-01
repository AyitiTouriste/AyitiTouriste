//
//  MainVC.swift
//  AyitiTourisme
//
//  Created by Abraham Asmile on 30/10/18.
//  Copyright © 2018 Abraham Asmile. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(showProfile),
//                                               name: NSNotification.Name("ShowProfile"),
//                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showDepartments),
                                               name: NSNotification.Name("ShowDepartments"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showNearBy),
                                               name: NSNotification.Name("ShowNearBy"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSignIn),
                                               name: NSNotification.Name("ShowSignIn"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showAbout),
                                               name: NSNotification.Name("ShowAbout"),
                                               object: nil)
        
       
    }
    
//    @objc func showProfile() {
//        performSegue(withIdentifier: "ShowProfile", sender: nil)
//    }
    @objc func showDepartments() {
        performSegue(withIdentifier: "ShowDepartments", sender: nil)
    }
    
    @objc func showNearBy() {
        performSegue(withIdentifier: "ShowNearBy", sender: nil)
    }
    
    @objc func showSignIn() {
        performSegue(withIdentifier: "ShowSignIn", sender: nil)
    }
    @objc func showAbout() {
        performSegue(withIdentifier: "ShowAbout", sender: nil)
    }
    
    
    @IBAction func onMoreTapped() {
        print("TOGGLE SIDE MENU")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    

}
