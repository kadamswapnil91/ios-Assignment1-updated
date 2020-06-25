//
//  menuViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 25/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class menuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btn_assignment1(_ sender: UIButton) {
    
        
        if let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController {
            let navController = UINavigationController(rootViewController: secondViewController)
            navController.setViewControllers([secondViewController], animated:true)
            self.revealViewController().setFront(navController, animated: true)
        }
        
    }
    
    @IBAction func btn_assignment2(_ sender: UIButton) {
        
        if let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as? secondViewController {
            let navController = UINavigationController(rootViewController: secondViewController)
            navController.setViewControllers([secondViewController], animated:true)
            self.revealViewController().setFront(navController, animated: true)
        }
        
    }
    
    @IBAction func btn_assignment3(_ sender: UIButton) {
     
        if let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdviewViewController") as? ThirdviewViewController {
            let navController = UINavigationController(rootViewController: secondViewController)
            navController.setViewControllers([secondViewController], animated:true)
            self.revealViewController().setFront(navController, animated: true)
        }
        
    }
    
    @IBAction func btn_assignment4(_ sender: UIButton) {
        
        
        
        if let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "ForthViewController") as? ForthViewController {
            let navController = UINavigationController(rootViewController: secondViewController)
            navController.setViewControllers([secondViewController], animated:true)
            self.revealViewController().setFront(navController, animated: true)
        }
        
        
      
    }
    
    @IBAction func btn_assignment5(_ sender: UIButton) {
        
        if let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "fifthdataViewController") as? fifthdataViewController {
            let navController = UINavigationController(rootViewController: secondViewController)
            navController.setViewControllers([secondViewController], animated:true)
            self.revealViewController().setFront(navController, animated: true)
        }
        
        
      
        
    }
    

   

}
