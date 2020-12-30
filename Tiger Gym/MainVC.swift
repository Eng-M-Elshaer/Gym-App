//
//  ViewController.swift
//  Tiger Gym
//
//  Created by Mohamed Elshaer on 11/9/17.
//  Copyright © 2017 Mohamed Elshaer. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var mainTableView: UITableView!
    
    //MARK:- Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- Actions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == R.segue.mainVC.typeToDay.identifier {
            let selectedRow = mainTableView.indexPathForSelectedRow?.row
            let type = segue.destination as! DayTableVC
            type.myChose = selectedRow!
        }
    }
}

//MARK:- UITableViewDataSource
extension MainVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ScheduleData.shared.mainTrainType.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.theCell.identifier) as! MainCell
        cell.configureCell(cellData: ScheduleData.shared.mainTrainType[indexPath.row])
        return cell
    }
}
