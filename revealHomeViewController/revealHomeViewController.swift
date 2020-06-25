//
//  revealHomeViewController.swift
//  task 1.1
//
//  Created by Swapnil Kadam on 25/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class revealHomeViewController: UIViewController {

    @IBOutlet weak var btn_menu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        btn_menu.target = self.revealViewController()
        btn_menu.action = #selector(SWRevealViewController.revealToggle(_:))
         self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
       

        
    }


    



}
