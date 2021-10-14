//
//  DemoTableViewCell.swift
//  VictorDelaTorreA
//
//  Created by Victor De la Torre Anicama on 2/10/21.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
    
    @IBOutlet var myCellLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = UIColor.lightGray
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
