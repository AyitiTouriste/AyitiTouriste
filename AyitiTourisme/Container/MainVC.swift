//
//  MainVC.swift
//  AyitiTourisme
//
//  Created by Abraham Asmile on 30/10/18.
//  Copyright © 2018 Abraham Asmile. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    var name = ["portauprince", "capHaitien", "hinche", "lesCayes", "jeremie", "gonaives", "fortLiberte", "portdepaix"]
    
    
    @IBOutlet weak var TableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        TableView.rowHeight = 100
        TableView.estimatedRowHeight = 120
        
        
        
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

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as? DepartementTableViewCell
        cell?.myImage?.image = UIImage(named: name[indexPath.row])
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier:"PortauPrinceViewController") as? PortauPrinceViewController
        vc?.detailImage?.image = UIImage(named: name[indexPath.row])!
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
}


