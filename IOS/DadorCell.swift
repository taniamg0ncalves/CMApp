//
//  DadorCell.swift
//  IOS
//
//  Created by Tânia Gonçalves on 10/06/2019.
//  Copyright © 2019 ipvc.estg. All rights reserved.
//

import UIKit

class DadorCell: UITableViewCell {

    @IBOutlet weak var nomeLbl: UILabel!
    
    @IBOutlet weak var tipoLbl: UILabel!
    
    @IBOutlet weak var hospitalLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
