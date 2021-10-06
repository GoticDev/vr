//
//  Desings.swift
//  VictorDelaTorreA
//
//  Created by Victor De la Torre Anicama on 2/10/21.
//

import Foundation
import UIKit


extension UIImageView {

    public func makeRounded() {

        self.layer.borderWidth = 1
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}

extension UIButton {
    public func buttonDesing() {
        self.setTitleColor(.black, for: .normal)
        self.layer.cornerRadius = 8
        self.backgroundColor = UIColor.gray
    }
}

extension String {
    public func detailsConsult() -> String {
        return NSLocalizedString(self, tableName: "DetailsConsult", bundle: .main, value: self, comment: self)
    }
}
