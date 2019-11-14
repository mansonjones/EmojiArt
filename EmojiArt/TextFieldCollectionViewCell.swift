//
//  TextFieldCollectionViewCell.swift
//  EmojiArt
//
//  Created by Manson Jones on 11/14/19.
//  Copyright © 2019 Manson Jones. All rights reserved.
//

import UIKit

class TextFieldCollectionViewCell: UICollectionViewCell, UITextFieldDelegate {
    @IBOutlet weak var textField: UITextField! {
        didSet {
            textField.delegate = self
        }
    }
 
    var resignationHandler: (() -> Void)?
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        resignationHandler?()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Causes the keyboard to disappear
        
        textField.resignFirstResponder()
        return true
    }
    
}
