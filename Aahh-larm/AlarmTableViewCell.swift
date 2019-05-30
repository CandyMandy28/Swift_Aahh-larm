//
//  AlarmTableViewCell.swift
//  Aahh-larm
//
//  Created by Codagami on 5/24/19.
//  Copyright © 2019 Codagami. All rights reserved.
//

import UIKit


class AlarmTableViewCell: UITableViewCell {
    //MARK: Properties
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var days: UILabel!
    @IBOutlet weak var isOn: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
