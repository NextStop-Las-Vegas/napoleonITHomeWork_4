//
//  ProgrammButtonVC.swift
//  HomeWork_4(tabBar)
//
//  Created by Pavel on 11.12.2020.
//

import UIKit

class ProgrammButtonVC: UIViewController {

    @IBOutlet weak var Label: UILabel!
    var viewControllerText = ""
    @IBOutlet weak var labelLeadingSpaceConstraint: NSLayoutConstraint!
    
    var labelOnLeadingSpace: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Label.text = viewControllerText
        textAnimate()
        print(viewControllerText)
    }
    @objc func textAnimate(){
        
        if labelOnLeadingSpace{
            labelLeadingSpaceConstraint.constant = 107
        }else{
            labelLeadingSpaceConstraint.constant = 10
            print("dev")
        }
        
        UIView.animate(withDuration: 2, delay: 0.2, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .transitionCurlUp, animations: self.view.layoutIfNeeded)
}
}
