//
//  TheDayTableVC.swift
//  Tiger Gym
//
//  Created by Mohamed Elshaer on 11/10/17.
//  Copyright © 2017 Mohamed Elshaer. All rights reserved.
//

import UIKit

class DayTableVC: UIViewController {

    @IBOutlet weak var dayTableView: UITableView!
    
    var myChose = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if segue.identifier == R.segue.dayTableVC.dayToTrain.identifier {
        
            let selectedRow = dayTableView.indexPathForSelectedRow?.row
            let type = segue.destination as! TrainListVC
            type.chosenDay = selectedRow!
            type.chosenTrain = myChose
            
        }
        
    }

}

extension DayTableVC : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch myChose {
        case 0:
            return ScheduleData.genralDay.count
        case 1 ... 2:
            return ScheduleData.trainDay.count
        case 3 ... 4:
            return ScheduleData.lossTrainDay.count
        case 5:
            return ScheduleData.superTrainDay.count
        default:
            return ScheduleData.trainDay.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = dayTableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.theDayCell.identifier) as! DayCellVC
        let index = indexPath.row
        
        switch myChose {
        case 0:
            cell.configureCell(cellData: ScheduleData.genralDay[index])
        case 1 ... 2:
            cell.configureCell(cellData: ScheduleData.trainDay[index])
        case 3 ... 4:
            cell.configureCell(cellData: ScheduleData.lossTrainDay[index])
        case 5:
            cell.configureCell(cellData: ScheduleData.superTrainDay[index])
        default:
            cell.configureCell(cellData: ScheduleData.trainDay[index])
        }
        
        return cell

    }
    
}
