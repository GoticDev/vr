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
    @IBOutlet weak var labelScroll: UILabel!
    //    var labelTitle: SecondViewController()
    var labelTitle = ""
    var detail = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = labelTitle
        labelScroll.text = detail
        
        scrollView.backgroundColor = UIColor.yellow
        
        
        
    }
}


