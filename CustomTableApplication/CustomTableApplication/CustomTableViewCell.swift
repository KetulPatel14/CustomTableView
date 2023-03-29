//
//  CustomTableViewCell.swift
//  CustomTableApplication
//
//  Created by Canadore Student on 2023-03-28.
//  Copyright © 2023 Canadore Student. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellMarks: UILabel!
    @IBOutlet weak var cellGrade: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
