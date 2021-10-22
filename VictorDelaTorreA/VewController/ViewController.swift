//
//  ViewController.swift
//  VictorDelaTorreA
//
//  Created by Victor De la Torre Anicama on 2/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstButtonLabel: UIButton!
  
    @IBOutlet weak var wellcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGray
        firstButtonLabel.setTitle("Press here to continue", for: .normal)
        firstButtonLabel.buttonDesing()
        
        wellcomeLabel.text = "welcome".detailsConsult()
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = "CV App by Vide"
    }

    override func viewWillDisappear(_ animated: Bool) {
        navigationItem.title = "Back"
    }
    
    @IBAction func firstButtonAction(_ sender: UIButton) {
        
        
        
    }
    
}

