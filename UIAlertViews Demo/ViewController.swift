//
//  ViewController.swift
//  UIAlertViews Demo
//
//  Created by Mirko Cukich on 9/19/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var alertMessageLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Alert message hidden until Alert called
        alertMessageLbl.isHidden = true
    }

    @IBAction func showAlertBtn(_ sender: Any) {
        
        let alert = UIAlertController(title: "Unable to log in", message: "The email or password that you\ntyped in is incorrect", preferredStyle: .alert)
        
        let actionButton = UIAlertAction(title: "Action", style: .default , handler: {
            
            (alert: UIAlertAction!) -> Void in
            self.alertMessageLbl.isHidden = false
            self.alertMessageLbl.text = "Action Requested"

        })
        
        let dismissButton = UIAlertAction(title: "Dismiss", style: .cancel, handler: {
            
            (alert: UIAlertAction!) -> Void in
            self.alertMessageLbl.isHidden = false
            self.alertMessageLbl.text = "Alert Acknowledged"

        })
        
        alert.addAction(actionButton)
        alert.addAction(dismissButton)
        
        // present alert to user
        self.present(alert, animated: true, completion: nil)
        
    }
    
}
