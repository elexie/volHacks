//
//  ViewController.swift
//  volApp
//
//  Created by Elexie Munyeneh on 9/29/18.
//  Copyright © 2018 Elexie Munyeneh. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var coralBg: UIImageView!
    @IBOutlet weak var circularProfile: UIImageView!
    
    @IBOutlet weak var cardMenu: UIView!
   
    @IBOutlet weak var lastCard: CardView2!
    
    @IBOutlet weak var secondCard: CardView2!
    @IBOutlet weak var thirdCard: CardView2!
    
    
    @IBAction func nameButton(_ sender: Any) {
        let context: LAContext = LAContext()
            if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error:nil)
            {
                context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "We need your fingerprint to verify", reply: {
                    (wasSuccessful, error) in
                    if wasSuccessful
                    {
                        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                        let newViewController = storyBoard.instantiateViewController(withIdentifier: "ProfileViewControllerBoard")
                        self.present(newViewController, animated: true, completion: nil)
                    }
                    
                })
            }
    }
    @IBOutlet weak var alertLabel: UILabel!
    @IBOutlet weak var alertSwitch: UISwitch!
    @IBOutlet weak var myCarButton: UIButton!
    
    
    @IBOutlet weak var checkInButton: UIButton!
    
    @IBOutlet weak var checkOutButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circularProfile.layer.cornerRadius = circularProfile.frame.size.width/2
        circularProfile.clipsToBounds=true
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

