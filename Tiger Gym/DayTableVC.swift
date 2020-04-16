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
    
    private func rowsNumber() -> Int {
        switch myChose {
        case 0:
            return ScheduleData.shared.genralDay.count
        case 1 ... 2:
            return ScheduleData.shared.trainDay.count
        case 3 ... 4:
            return ScheduleData.shared.lossTrainDay.count
        case 5:
            return ScheduleData.shared.superTrainDay.count
        default:
            return ScheduleData.shared.trainDay.count
        }
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
        return rowsNumber()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = dayTableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.theDayCell.identifier) as! DayCellVC
        let index = indexPath.row
        
        switch myChose {
        case 0:
            cell.configureCell(cellData: ScheduleData.shared.genralDay[index])
        case 1 ... 2:
            cell.configureCell(cellData: ScheduleData.shared.trainDay[index])
        case 3 ... 4:
            cell.configureCell(cellData: ScheduleData.shared.lossTrainDay[index])
        case 5:
            cell.configureCell(cellData: ScheduleData.shared.superTrainDay[index])
        default:
            cell.configureCell(cellData: ScheduleData.shared.trainDay[index])
        }
        
        return cell

    }
    
}
