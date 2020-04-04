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
      
        if segue.identifier == "DayToTrain"{
        
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
        
        let cell = dayTableView.dequeueReusableCell(withIdentifier: "TheDayCell") as! DayCellVC
        let index = indexPath.row
        
        switch myChose {
        case 0:
            cell.dayLabel.text = ScheduleData.genralDay[index]
        case 1 ... 2:
            cell.dayLabel.text = ScheduleData.trainDay[index]
        case 3 ... 4:
            cell.dayLabel.text = ScheduleData.lossTrainDay[index]
        case 5:
            cell.dayLabel.text = ScheduleData.superTrainDay[index]
        default:
            cell.dayLabel.text = ScheduleData.trainDay[index]
        }
        
        
        return cell

    }
    
}
