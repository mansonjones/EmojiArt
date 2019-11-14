//
//  EmojiArtView.swift
//  EmojiArt
//
//  Created by Manson Jones on 11/13/19.
//  Copyright © 2019 Manson Jones. All rights reserved.
//

import UIKit

class EmojiArtView: UIView
{

    var backgroundImage: UIImage? { didSet { setNeedsDisplay() } }
    
    override func draw(_ rect: CGRect) {
        backgroundImage?.draw(in: bounds)
    }
    

}
