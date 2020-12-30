//
//  TheTrainCellVC.swift
//  Tiger Gym
//
//  Created by Mohamed Elshaer on 11/10/17.
//  Copyright © 2017 Mohamed Elshaer. All rights reserved.
//

import UIKit

class TrainListCellVC: UITableViewCell {
    
    //MARK:- Outlets
    @IBOutlet weak var trainLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK:- Public Method
    func configureCell(index: Int, chosenTrain: Int, chosenDay: Int){
        if chosenTrain == 0 {
            trainLabel.text = ScheduleData.shared.genralTable[index]
        }else if chosenTrain == 1 {
            if chosenDay == 0 {
                trainLabel.text = ScheduleData.shared.bulk_A_ChestTable[index]
            } else if chosenDay == 1 {
                trainLabel.text = ScheduleData.shared.bulk_A_BackTable[index]
            } else if chosenDay == 2 {
                trainLabel.text = ScheduleData.shared.bulk_A_SholTable[index]
            } else if chosenDay == 3 {
                trainLabel.text = ScheduleData.shared.bulk_A_ArmTable[index]
            } else {
                trainLabel.text = ScheduleData.shared.bulk_A_LegTable[index]
            }
        } else if chosenTrain == 2 {
            if chosenDay == 0 {
                trainLabel.text = ScheduleData.shared.bulk_B_ChestTable[index]
            } else if chosenDay == 1 {
                trainLabel.text = ScheduleData.shared.bulk_B_BackTable[index]
            } else if chosenDay == 2 {
                trainLabel.text = ScheduleData.shared.bulk_B_SholTable[index]
            } else if chosenDay == 3 {
                trainLabel.text = ScheduleData.shared.bulk_B_ArmTable[index]
            } else {
                trainLabel.text = ScheduleData.shared.bulk_B_LegTable[index]
            }
        } else if chosenTrain == 3 {
            if chosenDay == 0 {
                trainLabel.text = ScheduleData.shared.loss_A_ChestTable[index]
            } else if chosenDay == 1 {
                trainLabel.text = ScheduleData.shared.loss_A_BackTable[index]
            } else if chosenDay == 2 {
                trainLabel.text = ScheduleData.shared.loss_A_Shol_LegTable[index]
            }  else {
                trainLabel.text = ScheduleData.shared.loss_A_CarTable[index]
            }
        }else if chosenTrain == 4 {
            if chosenDay == 0 {
                trainLabel.text = ScheduleData.shared.loss_B_PunchTable[index]
            } else if chosenDay == 1 {
                trainLabel.text = ScheduleData.shared.loss_B_BackTable[index]
            } else if chosenDay == 2 {
                trainLabel.text = ScheduleData.shared.loss_B_Shol_LegTable[index]
            }  else {
                trainLabel.text = ScheduleData.shared.loss_B_CarTable[index]
            }
        } else if chosenTrain == 5 {
            if chosenDay == 0 {
                trainLabel.text = ScheduleData.shared.super_Chest_BackTable[index]
            } else if chosenDay == 1 {
                trainLabel.text = ScheduleData.shared.super_Shol_LegTable[index]
            } else {
                trainLabel.text = ScheduleData.shared.super_ArmTable[index]
            }
        }else {
            if chosenDay == 0 {
                trainLabel.text = ScheduleData.shared.denf_ChestTable[index]
            } else if chosenDay == 1 {
                trainLabel.text = ScheduleData.shared.denf_BackTable[index]
            } else if chosenDay == 2 {
                trainLabel.text = ScheduleData.shared.denf_SholTable[index]
            } else if chosenDay == 3 {
                trainLabel.text = ScheduleData.shared.denf_ArmTable[index]
            } else {
                trainLabel.text = ScheduleData.shared.denf_LegTable[index]
            }
        }
    }
}
