//
//  SecondScreenViewController.swift
//  HomeWork_4(tabBar)
//
//  Created by Pavel on 12.12.2020.
//

import UIKit

class SecondScreenViewController: UIViewController {
    @IBOutlet weak var squareView: UIView!
    
    @IBOutlet weak var viewLeadingSpaceConstraint: NSLayoutConstraint!
    @IBOutlet weak var viewTopSpaceConstraint: NSLayoutConstraint!
    
    //MARK: properties
    
    var squreViewOnTop: Bool = true
    
    func someAnimation(){
        viewTopSpaceConstraint.constant = 300
        UIViewPropertyAnimator(duration: 1, curve: .easeIn) {
            self.squareView.layer.cornerRadius = 50
            self.squareView.clipsToBounds = true
        }.startAnimation()
       
    }
    func someAnimationTwo(){
        
        viewTopSpaceConstraint.constant = 100
            UIViewPropertyAnimator(duration: 0, curve: .easeIn) {
                self.squareView.layer.cornerRadius = 0
                self.squareView.clipsToBounds = true
            }.startAnimation()
    }
    
    @IBAction func chandgeColor(_ sender: Any) {
        
        if squreViewOnTop{
            viewTopSpaceConstraint.constant = 300
            UIViewPropertyAnimator(duration: 1, curve: .easeIn) {
                self.squareView.layer.cornerRadius = 50
                self.squareView.clipsToBounds = true
            }.startAnimation()
        } else{
            viewTopSpaceConstraint.constant = 100
            UIViewPropertyAnimator(duration: 1, curve: .easeIn) {
                self.squareView.layer.cornerRadius = 0
                self.squareView.clipsToBounds = true
            }.startAnimation()
        }

        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .transitionCurlUp, animations: self.view.layoutIfNeeded, completion: { _ in
            //self.squreViewOnTop.toggle()
            self.someAnimation()

            UIView.animate(withDuration: 2) {
                self.someAnimation()
                switch Int.random(in: 0...3) {
                case 0: self.squareView.backgroundColor = .black
                case 1: self.squareView.backgroundColor = .green
                case 2: self.squareView.backgroundColor = .darkGray
                case 3: self.squareView.backgroundColor = .yellow
                default: self.squareView.backgroundColor = .systemIndigo
                }
            }
            UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .transitionCurlDown, animations: self.view.layoutIfNeeded, completion: { _ in
                //self.squreViewOnTop.toggle()
                self.someAnimationTwo()
            })
        })
    }
}

