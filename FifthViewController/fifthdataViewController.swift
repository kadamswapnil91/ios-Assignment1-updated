//
//  fifthdataViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 20/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

protocol Datapass
{
    func Datapassing(name:String , city:String , contact: String)
    
    
    
}



class fifthdataViewController: UIViewController {
    
    
    @IBOutlet var menubtn: UIButton!
    @IBAction func btn_BacktoFifth(_ sender: UIButton) {
        
   //     self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBOutlet weak var txt_name: UITextField!
    
    @IBOutlet weak var txt_city: UITextField!
    
    @IBOutlet weak var txt_contact: UITextField!
    
    var delegate :Datapass!
    
    @IBAction func btn_save(_ sender: UIButton) {
        
        if txt_name.text == ""
        {
            alert(title: "Please Enter Name...", message: "", delegate: self)
            
        }
            
        else if txt_city.text == ""
        {
            alert(title: "Please Enter City ...", message: "", delegate: self)
            
        }
            
        else if  txt_contact.text == ""
        {
            alert(title: "Please Enter Contact Number... ", message: "", delegate: self)
            
        }
        else
        {
            view.endEditing(true)//hide keyboar
       //     delegate.Datapassing(name: txt_name.text!, city: txt_city.text!, contact: txt_contact.text!)
            
            let alert = UIAlertController(title: "Data saved successfully!!", message: nil,         preferredStyle: UIAlertControllerStyle.alert)
            
         
            alert.addAction(UIAlertAction(title: "OK",
                                          style: UIAlertActionStyle.default,
                                          handler: {(_: UIAlertAction!) in
                                            //Sign out action
                            // self.revealViewController().revealToggle(animated: true)
               let fifthdata : FifthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
                                            UserDefaults.standard.set(self.txt_name.text, forKey: "name")
                                            UserDefaults.standard.set(self.txt_city.text, forKey: "city")
                                            UserDefaults.standard.set(self.txt_contact.text, forKey: "contact")
                                           // fifthdata.delegate=self as? Datapass
              self.navigationController?.pushViewController(fifthdata, animated: true)
                                            
                                            
                                            
                                            
            }))
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
        
        
    }
    
    func alert(title:String, message:String, delegate:AnyObject)
    {
        let alert = UIAlertView()
        alert.title=title
        alert.message = message
        alert.addButton(withTitle: "OK")
        alert.delegate=delegate
        alert.show()
        
        
        
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationController?.isNavigationBarHidden = true
        
        ///revelcontroller
        self.revealViewController().revealToggle(animated: true) //Hidesidemenu

        menubtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)

        self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())

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
