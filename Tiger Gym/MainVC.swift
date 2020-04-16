//
//  ViewController.swift
//  Tiger Gym
//
//  Created by Mohamed Elshaer on 11/9/17.
//  Copyright © 2017 Mohamed Elshaer. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
           if segue.identifier == R.segue.mainVC.typeToDay.identifier {
               let selectedRow = mainTableView.indexPathForSelectedRow?.row
               let type = segue.destination as! DayTableVC
               type.myChose = selectedRow!
           }
        
    }
    
}

extension MainVC : UITableViewDataSource {
       
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return ScheduleData.shared.mainTrainType.count
    }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
           let cell = mainTableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.theCell.identifier) as! MainCell
           cell.configureCell(cellData: ScheduleData.shared.mainTrainType[indexPath.row])
           return cell
    }
    
}
