//
//  FifthViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 20/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    
    @IBAction func btn_BackToPrevious(_ sender: UIButton) {
        
       self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet var menubtn: UIButton!
 
    @IBOutlet weak var lbl_name: UILabel!
    
    @IBOutlet weak var lbl_city: UILabel!
    
    @IBOutlet weak var lbl_contact: UILabel!
    
    
    @IBAction func btn_signup(_ sender: UIButton) {
        
        
 
//        let fifthdata : fifthdataViewController = self.storyboard?.instantiateViewController(withIdentifier: "fifthdataViewController") as! fifthdataViewController
//        fifthdata.delegate=self
//        self.navigationController?.pushViewController(fifthdata, animated: true)
//        
        
        
        
    }
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
         self.revealViewController().revealToggle(animated: true)
        self.revealViewController().revealToggle(animated: true) //Hidesidemenu
        

        lbl_city.text = UserDefaults.standard.value(forKey:"city") as! String
        lbl_name.text = UserDefaults.standard.value(forKey:"name") as! String
        lbl_contact.text = UserDefaults.standard.value(forKey:"contact") as! String
        

        // self.navigationController?.isNavigationBarHidden = true

        // Do any additional setup after loading the view.
        
        ///revelcontroller
      

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
