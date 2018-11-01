//
//  SideMenuVC.swift
// AyitiTourisme
//
//  Created by Abraham Asmile on 30/10/18.
//  Copyright © 2018 Abraham Asmile. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        switch indexPath.row {
        case 0: NotificationCenter.default.post(name: NSNotification.Name("ShowDepartments"), object: nil)
        case 1: NotificationCenter.default.post(name: NSNotification.Name("ShowNearBy"), object: nil)
        case 2: NotificationCenter.default.post(name: NSNotification.Name("ShowSignIn"), object: nil)
            case 3: NotificationCenter.default.post(name: NSNotification.Name("ShowAbout"), object: nil)
        default: break
        }
    }

}
