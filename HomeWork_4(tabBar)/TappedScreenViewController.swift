//
//  TappedScreenViewController.swift
//  HomeWork_4(tabBar)
//
//  Created by Pavel on 11.12.2020.
//

import UIKit

class TappedScreenViewController: UIViewController {
    @IBOutlet weak var someText: UITextField!
    
    @IBAction func tapButton(_ sender: Any) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
      let controller = storyboard.instantiateViewController(identifier: "ProgrammButtonVC") as ProgrammButtonVC
        controller.viewControllerText = someText.text ?? "bad gateway"
        self.navigationController?.pushViewController(controller, animated: true)
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")

    }
}

