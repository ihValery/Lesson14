//
//  myCustomTableViewCell.swift
//  Lesson14
//
//  Created by Валерий Игнатьев on 22.02.2021.
//

import UIKit

class myCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myLabelForCell: UILabel!
    @IBOutlet weak var myLabelForsurName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
