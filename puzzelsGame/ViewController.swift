//
//  ViewController.swift
//  puzzelsGame
//
//  Created by xxx on 5/27/19.
//  Copyright © 2019 mgh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lableCount: UILabel!
    var flipsCount : Int = 0 {
        didSet{
            lableCount.text = "Flips : " + String(flipsCount)
        }
    }
    @IBOutlet var touchButton: [UIButton]!
    var emojiArray : Array<String> = ["🐕","🐀","🐓","🦍","🐫","🐘","🐫","🐕","🐓","🐀","🦍","🐘"]
    
    
    

}

