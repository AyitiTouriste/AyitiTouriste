//
//  PortauPrinceViewController.swift
//  AyitiTourisme
//
//  Created by Jetry Dumont on 11/11/18.
//  Copyright © 2018 Codepath. All rights reserved.
//

import UIKit

class PortauPrinceViewController: UIViewController {
    
    
    @IBOutlet weak var detailImage: UIImageView!
    
    var image = UIImage()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImage.image = detailImage.image
        

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
