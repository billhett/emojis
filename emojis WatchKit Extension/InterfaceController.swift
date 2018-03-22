//
//  InterfaceController.swift
//  emojis WatchKit Extension
//
//  Created by William Hettinger on 3/21/18.
//  Copyright © 2018 William Hettinger. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var emojiTable: WKInterfaceTable!
    var allTheEmojis = ["😎", "😍", "🤠", "🍸", "🍼", "🍷", "🚜", "🚡", "🚂"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.emojiTable.setNumberOfRows(self.allTheEmojis.count, withRowType: "myRow")
        // Configure interface objects here.
        for emojiIndex in 0...(self.allTheEmojis.count-1) {
            var tableRow = self.emojiTable.rowController(at: emojiIndex) as! MyRow
            tableRow.emojiLabel.setText(allTheEmojis[emojiIndex])
        }
        
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        self.pushController(withName: "EmojiDetail", context: rowIndex)
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
