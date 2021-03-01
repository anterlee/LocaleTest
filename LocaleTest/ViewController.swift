//
//  ViewController.swift
//  LocaleTest
//
//  Created by anterlee on 2021/03/01.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var tableview: NSTableView!
    
    var tableData:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        for item in NSLocale.availableLocaleIdentifiers {
            tableData.append(item)
        }
        
        
//        dateFormatter.locale = Locale(identifier: "en_US")
//        print(dateFormatter.string(from: date)) // Feb 23, 2018 at 4:34:31 PM
        
        //print(NSLocale.availableLocaleIdentifiers)
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

extension ViewController : NSTableViewDelegate , NSTableViewDataSource{
    func numberOfRows(in tableView: NSTableView) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
            guard (tableColumn?.identifier.rawValue) != nil else { return nil }
            let data = tableData[row]
            let columnName = tableColumn?.identifier.rawValue
            guard let cellView = tableView.makeView(withIdentifier:
                                                        NSUserInterfaceItemIdentifier(rawValue: columnName!),
                                                    owner: self) as? TableCell
            else {
                return nil
            }
            if(columnName == "a")
            {
                cellView.lb_code.stringValue = data
            }else if (columnName == "b"){
                cellView.picker_date.locale = Locale(identifier: data)
            }
        
        return cellView
    }
}
