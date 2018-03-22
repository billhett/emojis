//
//  EmojiDetailInterfaceController.swift
//  emojis WatchKit Extension
//
//  Created by William Hettinger on 3/22/18.
//  Copyright © 2018 William Hettinger. All rights reserved.
//

import WatchKit
import Foundation


class EmojiDetailInterfaceController: WKInterfaceController {
    
    @IBOutlet var bigEmojiLabel: WKInterfaceLabel!
    
    @IBOutlet var emojiDefinitionLabel: WKInterfaceLabel!
    
    var allTheEmojis = ["😎", "😍", "🤠", "🍸", "🍼", "🍷", "🚜", "🚡", "🚂"]
    var emojiDefs = ["Smiley face with sunglasses", "Smiley face with heart eyes", "Smiley face with cowboy hat", "Martini glass", "Baby bottle", "Glass of wine", "Tractor", "Cable car", "Locomotive"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let myIndex = context as! Int
        print("my index is \(myIndex)")
        //var emoji = context as! String
        self.bigEmojiLabel.setText(allTheEmojis[myIndex])
        print("my bigEmoji is \(allTheEmojis[myIndex])")
        
        self.emojiDefinitionLabel.setText(emojiDefs[myIndex])
        print("my definition is \(emojiDefs[myIndex])")
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
