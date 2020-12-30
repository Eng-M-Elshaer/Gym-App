//
//  TheMainCell.swift
//  Tiger Gym
//
//  Created by Mohamed Elshaer on 11/9/17.
//  Copyright © 2017 Mohamed Elshaer. All rights reserved.
//

import UIKit

class MainCell: UITableViewCell {

    //MARK:- Outlets
    @IBOutlet weak var mainTypeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK:- Public Method
    func configureCell(cellData:String){
        mainTypeLabel.text = cellData
    }
}
