//
//  secondViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 17/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class secondViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
  
   var weekarray = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]

    @IBOutlet weak var btn_Back: UIButton!
    
    @IBAction func btn_NextToThird(_ sender: UIButton) {

        let thirdView: ThirdviewViewController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdviewViewController") as! ThirdviewViewController

        self.navigationController?.pushViewController(thirdView, animated: true)

        
    }
    
    
    
    @IBOutlet weak var datepicker: UIDatePicker!
    
    @IBAction func Act_datepicker(_ sender: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from:datepicker.date )
        lbl_datepicker.text = strDate
        
        
    }
    
   @IBOutlet weak var lbl_datepicker: UILabel!
    
    
    
    
    @IBOutlet weak var pickerview: UIPickerView!
    
    @IBOutlet weak var btn_savepickerview: UIButton!
    
    @IBAction func btn_Savepickerdata(_ sender: Any)
    {
        
      self.lbl_dayshow.text = self.weekarray[self.pickerview.selectedRow(inComponent: (0))]
      
        
    }
    
    @IBOutlet weak var lbl_dayshow: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
        self.pickerview.delegate = self
        self.pickerview.dataSource = self
      
        self.revealViewController().revealToggle(animated: true)
        btn_Back.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)

        self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return weekarray.count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.weekarray[row]
        
    }
    
    @IBAction func btn_Back(_ sender: Any) {
        
      //  btn_Back.addTarget(revealViewController(), action: #selector(SWRevealViewController.rightRevealToggle(_:)), for: UIControlEvents.touchUpInside)
        }
        
       
        
 

}
