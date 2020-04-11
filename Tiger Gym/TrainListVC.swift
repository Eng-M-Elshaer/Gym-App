//
//  TheTrainVC.swift
//  Tiger Gym
//
//  Created by Mohamed Elshaer on 11/10/17.
//  Copyright © 2017 Mohamed Elshaer. All rights reserved.
//

import UIKit

class TrainListVC: UIViewController {
    
    @IBOutlet weak var trainTableView: UITableView!
    
    var chosenDay = 0
    var chosenTrain = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == R.segue.trainListVC.trainToImage.identifier {
            let selectedRow = trainTableView.indexPathForSelectedRow?.row
            let type = segue.destination as! TrainVC
            type.myChose = chosenTrain
            type.myTrain = selectedRow!
            type.theDay = chosenDay
            
        }
    }
    
}

extension TrainListVC : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if chosenTrain == 0 {
            return ScheduleData.genralTable.count
        }
            
        else if chosenTrain == 1 {
            
            if chosenDay == 0 {
                return ScheduleData.bulk_A_ChestTable.count
            } else if chosenDay == 1 {
                return ScheduleData.bulk_A_BackTable.count
            } else if chosenDay == 2 {
                return ScheduleData.bulk_A_SholTable.count
            } else if chosenDay == 3 {
                return ScheduleData.bulk_A_ArmTable.count
            } else {
                return ScheduleData.bulk_A_LegTable.count
            }
            
            
        } else if chosenTrain == 2 {
            
            if chosenDay == 0 {
                return ScheduleData.bulk_B_ChestTable.count
            } else if chosenDay == 1 {
                return ScheduleData.bulk_B_BackTable.count
            } else if chosenDay == 2 {
                return ScheduleData.bulk_B_SholTable.count
            } else if chosenDay == 3 {
                return ScheduleData.bulk_B_ArmTable.count
            } else {
                return ScheduleData.bulk_B_LegTable.count
            }
            
        } else if chosenTrain == 3 {
            
            if chosenDay == 0 {
                return ScheduleData.loss_A_ChestTable.count
            } else if chosenDay == 1 {
                return ScheduleData.loss_A_BackTable.count
            } else if chosenDay == 2 {
                return ScheduleData.loss_A_Shol_LegTable.count
            }  else {
                return ScheduleData.loss_A_CarTable.count
            }
            
            
        }else if chosenTrain == 4 {
            
            if chosenDay == 0 {
                return ScheduleData.loss_B_PunchTable.count
            } else if chosenDay == 1 {
                return ScheduleData.loss_B_BackTable.count
            } else if chosenDay == 2 {
                return ScheduleData.loss_B_Shol_LegTable.count
            }  else {
                return ScheduleData.loss_B_CarTable.count
            }
            
        } else if chosenTrain == 5 {
            
            if chosenDay == 0 {
                return ScheduleData.super_Chest_BackTable.count
            } else if chosenDay == 1 {
                return ScheduleData.super_Shol_LegTable.count
            } else {
                return ScheduleData.super_ArmTable.count
            }
        }else {
            
            if chosenDay == 0 {
                return ScheduleData.denf_ChestTable.count
            } else if chosenDay == 1 {
                return ScheduleData.denf_BackTable.count
            } else if chosenDay == 2 {
                return ScheduleData.denf_SholTable.count
            } else if chosenDay == 3 {
                return ScheduleData.denf_ArmTable.count
            } else {
                return ScheduleData.denf_LegTable.count
            }
            
            
        }
        
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = trainTableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.theTrainCell.identifier ) as! TrainListCellVC
        cell.configureCell(index: indexPath.row, chosenTrain: chosenTrain, chosenDay: chosenDay)
        return cell
    }
    
}
