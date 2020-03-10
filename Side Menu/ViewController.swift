//
//  ViewController.swift
//  Side Menu
//
//  Created by Mohamed Abd el Aty on 3/9/20.
//  Copyright © 2020 Aty. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var shadwoView: UIView!
   
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
   
    
    var menuOut = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
                  shadwoView.layer.shadowColor = UIColor.black.cgColor
                  shadwoView.layer.shadowOpacity = 1
                  shadwoView.layer.shadowOffset = .zero
                  shadwoView.layer.shadowRadius = 10
                  
                  shadwoView.layer.shadowPath = UIBezierPath(rect: shadwoView.bounds).cgPath
                  shadwoView.layer.shouldRasterize = true
        
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.checkAction))
        self.view.addGestureRecognizer(gesture)
      
        // Do any additional setup after loading the view.
    }
    
  
    @objc func checkAction(sender : UITapGestureRecognizer) {
        // Do what you want
        print("Hello gesture")
        if  menuOut == true {
                  leading.constant = 0
                             trailing.constant = 0
                             menuOut = false
               }
    }
    
    @IBAction func MenuTapped(_ sender: Any) {
        
        if  menuOut == false {
            
            leading.constant = (3/4) * self.view.frame.size.width
        
            trailing.constant = -(3/4) * (self.view.frame.size.width)
                    
            menuOut = true
        } else {
            leading.constant = 0
            trailing.constant = 0
            menuOut = false
        }
        
         
        
    }
    
    
    
    
}

