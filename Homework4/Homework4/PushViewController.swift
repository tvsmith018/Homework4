//
//  PushViewController.swift
//  Homework4
//
//  Created by Consultant on 4/27/22.
//

import UIKit

class PushViewController: UIViewController {
    
    var names: String?
    var pics: String?
    var on_off: Bool?
    var bio: String?

    @IBOutlet weak var imageBox: UIImageView!
    @IBOutlet weak var nameBox: UILabel!
    @IBOutlet weak var bio_box: UILabel!
    @IBOutlet weak var switch_button: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageBox.image = UIImage(named: pics ?? "na")
        self.nameBox.text = "\(self.names ?? "?")"
        self.bio_box.text = "\(self.bio ?? "?")"
        self.switch_button.isOn = self.on_off ?? false

    }
    

    

}
