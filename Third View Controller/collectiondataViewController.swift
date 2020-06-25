//
//  collectiondataViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 23/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class collectiondataViewController: UIViewController {
    
    @IBOutlet weak var imagecollection: UIImageView!
    
    @IBOutlet weak var lbl_collectionData: UILabel!
    
    @IBAction func btn_BackToCollection(_ sender: UIButton)
    {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    var mainimage:UIImage!
    var mainlbl:String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imagecollection.image = mainimage
        lbl_collectionData.text = mainlbl
        self.navigationController?.isNavigationBarHidden = true

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
