//
//  TableViewCell.swift
//  Homework4
//
//  Created by Consultant on 4/26/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var my_pic: UIImageView!
    @IBOutlet weak var my_bio: UITextView!
    @IBOutlet weak var my_name: UILabel!
    @IBOutlet weak var on_off: UISwitch!
    
    func configure(image: UIImage?, name: String, bio: String, on_off: Bool) {
        self.my_pic.image = image
        self.my_name.text = name
        self.my_bio.text = bio
        self.on_off.isOn = on_off
    }
    
}
    

