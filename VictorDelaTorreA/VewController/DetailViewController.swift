//
//  DetailViewController.swift
//  VictorDelaTorreA
//
//  Created by Victor De la Torre Anicama on 5/10/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
//    var labelTitle: SecondViewController()
    var labelTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = labelTitle
        scrollView.backgroundColor = UIColor.yellow
        
        
        
    }
    


}
