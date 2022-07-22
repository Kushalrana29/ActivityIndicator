//
//  ViewController.swift
//  ActvityIndicatorDemo
//
//  Created by Kushal Rana on 22/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        activateActivityIndicator()
        
    }


    
    
    func activateActivityIndicator(){
    
        indicator.style = .large
    }
    
    
    @IBAction func startaAnimating(_ sender: Any) {
        indicator.startAnimating()
    }
    

    @IBAction func stopAnimating(_ sender: Any) {
        

        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            self.indicator.stopAnimating()
        }
    }
}

