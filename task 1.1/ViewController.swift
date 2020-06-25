//
//  ViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 15/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate{
    
    
    @IBOutlet weak var btn_menuSWReal: UIBarButtonItem!
    @IBOutlet var menubtn: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        ///revelcontroller
        self.revealViewController().revealToggle(animated: true) //Hidesidemenu
        
        menubtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        
    }
    
    
    @IBOutlet weak var btn_next: UIButton!
    
    @IBAction func btn_next(_ sender: UIButton) {
//        let secview: secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
//        
//        self.navigationController?.pushViewController(secview, animated: true)
        
    }
    
    @IBAction func slider_action(_ sender: UISlider) {
        sider_status.text = String(Int(sender.value))
    }
    
    
    @IBOutlet weak var switch1: UISwitch!
    
    @IBOutlet weak var slider1: UISlider!
    
    @IBAction func switch1(_ sender: UISwitch)
    {
        if switch1.isOn
        {
            switchstatus.text = "ON"
            
        }
        else
        {
            switchstatus.text = "OFF"
        }
    }
    @IBOutlet weak var switchstatus: UILabel!
    
    

    
    @IBOutlet weak var sider_status: UILabel!
    
    
    
    
    @IBOutlet weak var seg: UISegmentedControl!
    
    @IBOutlet weak var txt_name: UITextField!
    
    @IBAction func btn_save(_ sender: UIButton)
    {
        if txt_name.isHidden == true
        {
            txt_name.isHidden = false
        }
        else
        {
            lbl_show.text = txt_name.text
            
            txt_name.isHidden = true
            
        }
        
        
    }
    
    @IBOutlet weak var lbl_show: UILabel!
    
    
    @IBOutlet weak var button_saveoutlet: UIButton!
    
    
    @IBAction func segmentaction(_ sender: UISegmentedControl)
    {
        if seg.selectedSegmentIndex == 0
        {
            lbl_segshow.text = "Mumbai"
            img.image = #imageLiteral(resourceName: "mumbai")
            
        }
        else if seg.selectedSegmentIndex == 1
        {

            lbl_segshow.text = "Delhi"
            img.image = #imageLiteral(resourceName: "delhi")
        }
        else if seg.selectedSegmentIndex == 2
        {
            lbl_segshow.text = "Kolkata"
            img.image = #imageLiteral(resourceName: "kolkata")
        }
        else if seg.selectedSegmentIndex == 3
        {
            lbl_segshow.text = "Chennai"
            img.image = #imageLiteral(resourceName: "channai")
        }
    }
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var lbl_segshow: UILabel!
    
    
    

    
    }






