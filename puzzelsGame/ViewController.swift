//
//  ViewController.swift
//  puzzelsGame
//
//  Created by xxx on 5/27/19.
//  Copyright © 2019 mgh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstBtn : UIButton?
    var scndBtn : UIButton?
    @IBOutlet weak var lableCount: UILabel!
    var flipsCount : Int = 0 {
        didSet{
            lableCount.text = "Flips : " + String(flipsCount)
        }
    }
    @IBOutlet var cardButton: [UIButton]!
    var emojiArray : Array<String> = ["🐕","🐀","🐓","🦍","🐫","🐘","🐫","🐕","🐓","🐀","🦍","🐘"]
    
    @IBAction func whenTachBtn(_ sender: UIButton) {
        flipsCount = flipsCount + 1
        let IndexOfEmojiArray : Int = cardButton.index(of: sender)!
        fillCardbyImage(img: emojiArray[IndexOfEmojiArray], sender: sender)
  
        if(flipsCount == 1){
            firstBtn = sender
        }else{
            if(flipsCount % 2 == 0){
                scndBtn = sender
            }else{
                    scndBtn = firstBtn
                    firstBtn = sender
            }
            if(firstBtn?.currentTitle != "" && scndBtn?.currentTitle !=  ""){
            check2btn(btn1: firstBtn!, btn2: scndBtn!)
            }
        }
    }
    
    func check2btn(btn1 B1:UIButton,btn2 B2:UIButton) {
        if(B1.tag != B2.tag){
            if( B1.currentTitle == B2.currentTitle ){
                delete2btn(btn1: B1, btn2: B2)
            }
        }
    }
   
    func delete2btn(btn1 B1:UIButton,btn2 B2:UIButton){
        B1.isHidden = true
        B2.isHidden = true
    }
    
    func fillCardbyImage(img emojiArray:String , sender : UIButton){
        if(sender.currentTitle == emojiArray){
            sender.setTitle("" , for: UIControlState.normal)
            sender.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        }else{
            sender.setTitle(emojiArray , for: UIControlState.normal)
            sender.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }
    
}

