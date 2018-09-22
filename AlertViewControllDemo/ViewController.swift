//
//  ViewController.swift
//  AlertViewControllDemo
//
//  Created by Akash Technolabs on 04/11/17.
//  Copyright © 2017 Akash Technolabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    
    @IBAction func btnSimpleAlert(_ sender: UIButton)
    {
        let alert = UIAlertController(title: "Warnig", message: "Your Logout", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func btnCancelAlert(_ sender: UIButton)
    {
        let cancelAlert = UIAlertController(title: "Warnig", message: "Not Logout", preferredStyle: .actionSheet)
        
        let cancleAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        cancelAlert.addAction(cancleAction)
        
        self.present(cancelAlert, animated: true, completion: nil)
        
    }
    
    @IBAction func btnConfirmAlert(_ sender: UIButton)
    {
        //confirm alert
        let confrimAlert = UIAlertController(title: "Warnig", message: "Confirm", preferredStyle:.alert)
        //confirm alert need confirm action
        let confirmAction = UIAlertAction(title: "Confirm", style: .default, handler: nil)
        
        let confirm = UIAlertAction(title: "Are ou sure ?", style: .default, handler:
        {
            (UIAlertAction) in
          
            let logout = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ScondView")
            self.present(logout, animated: true, completion: nil)
            
        })
        
      
        
        //confirm alert need cancel action aslo
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        //add both action to confirm alert
        confrimAlert.addAction(confirmAction)
        confrimAlert.addAction(cancelAction)
        //for the actiom you to perform the present action
        self.present(confrimAlert, animated: true, completion: nil)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

