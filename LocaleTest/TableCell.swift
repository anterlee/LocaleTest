//
//  TableCell.swift
//  LocaleTest
//
//  Created by anterlee on 2021/03/01.
//

import Cocoa

class TableCell: NSTableCellView {

    @IBOutlet weak var picker_date: NSDatePicker!
    @IBOutlet weak var lb_code: NSTextField!
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    
}
