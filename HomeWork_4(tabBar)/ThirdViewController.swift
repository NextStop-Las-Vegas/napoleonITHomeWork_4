//
//  ThirdViewController.swift
//  HomeWork_4(tabBar)
//
//  Created by Pavel on 13.12.2020.
//

import UIKit

class ThirdViewController: UIViewController {
    //MARK: - Outlets
    
    @IBOutlet weak var squareView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var bumblBEE: UIView!
    @IBOutlet weak var blueBoy: UIView!
    @IBOutlet weak var SecondViewLeadigSpace: NSLayoutConstraint!
    @IBOutlet weak var SecondViewTopSpace: NSLayoutConstraint!
    @IBOutlet weak var SecondViewTopBottomSpace: NSLayoutConstraint!
    
    //MARK: - Parametres

    var isFromViewToView: Bool = false
    
    private lazy var FirstTapGestureRecognizer: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tappedSquareView(_:)))
    
    private lazy var SecondTapGestureRecognizer: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(firstThirdTappedViews(_:)))
    
    var squreViewOnTop: Bool = true
    var firstSqureViewOnTopToggle: Bool = true

    //MARK: - Functions

    override func viewDidLoad() {
        super.viewDidLoad()
        squareView.addGestureRecognizer(FirstTapGestureRecognizer)
        thirdView.addGestureRecognizer(SecondTapGestureRecognizer)
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")
        print("master")

    }
    
    @objc  func tappedSquareView(_ sender: UITapGestureRecognizer){
        
        UIView.animate(withDuration: 2){
        switch Int.random(in: 0...3) {
        
        case 0: self.squareView.backgroundColor = .black
        case 1: self.squareView.backgroundColor = .green
        case 2: self.squareView.backgroundColor = .darkGray
        case 3: self.squareView.backgroundColor = .yellow

        default: self.squareView.backgroundColor = .systemIndigo
        }
        }
        if squreViewOnTop{
            SecondViewLeadigSpace.constant = 30
            print("30")
        } else{
            SecondViewLeadigSpace.constant = 127
            print("127")
        }

        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, animations: self.view.layoutIfNeeded, completion: { _ in
            self.squreViewOnTop.toggle()
        })
        print("color & position chandged")
        
    }
    
    @objc func firstThirdTappedViews(_ sender: UITapGestureRecognizer){

        isFromViewToView = !isFromViewToView
        let fromView = isFromViewToView ? bumblBEE : blueBoy
        let toView = isFromViewToView ? blueBoy : bumblBEE

        UIView.transition(from: toView!, to: fromView!, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews])

//        switch sender.state {
//        case .began:
//            print("begun")
//        case .changed:
//            print("chandged")
//        case .ended:
////            UIView.transition(from: firstView, to: thirdView, duration: 3, options: .transitionCurlUp, completion: nil            )
//            print("ended")
//        default: break
//        }
    }
}
