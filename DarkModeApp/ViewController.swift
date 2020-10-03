//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Yurii Sameliuk on 09/02/2020.
//  Copyright © 2020 Yurii Sameliuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //zapres4aem izmeniat režum  na etom kontrollere, ystanowiw defoltnoe zna4enije
        overrideUserInterfaceStyle = .light
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            
            changeButton.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        } else {
           changeButton.tintColor = #colorLiteral(red: 0, green: 0.4787920713, blue: 0.9984667897, alpha: 1)
        }
    }
    // eta fynkcuja wuzuwaetsia kogda polzowatel sdelal izmenenija UI . cwet knopki izmebiaetsia srazy pri smene režuma.
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
         let userInterfaceStyle = traitCollection.userInterfaceStyle
               
               if userInterfaceStyle == .dark {
                   
                   changeButton.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
               } else {
                  changeButton.tintColor = #colorLiteral(red: 0, green: 0.4787920713, blue: 0.9984667897, alpha: 1)
               }
    }
}

