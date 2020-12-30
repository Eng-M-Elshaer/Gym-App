//
//  ToneVC.swift
//  Tiger Gym
//
//  Created by Mohamed Elshaer on 12/5/17.
//  Copyright © 2017 Mohamed Elshaer. All rights reserved.
//

import UIKit
import AVFoundation


class ToneVC: UIViewController{

    //MARK:- Outlets
    @IBOutlet weak var toneTableView: UITableView!
    
    //MARK:- Properties
    let tonesName = ["Alarm","Ascending","Danger"]
    var player = AVAudioPlayer()
    var playing = false
    
    //MARK:- Lifecycle Methods
    override func viewDidDisappear(_ animated: Bool) {
        if playing == true {player.stop()}
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK:- UITableViewDataSource
extension ToneVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tonesName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = toneTableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.toneCell.identifier)
        cell!.textLabel!.text = tonesName[indexPath.row]
        cell?.textLabel?.textColor = UIColor.orange
        cell?.textLabel?.font = UIFont(name: "MarkerFelt-Thin", size: 18)
        return cell!
    }
}

//MARK:- UITableViewDelegate
extension ToneVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        ScheduleData.shared.toneName = tonesName[indexPath.row]
        setToneName(tonesName[indexPath.row])
        if playing == false {
            play(toneName: ScheduleData.shared.toneName)
            playing = true
        } else if playing == true {
            player.stop()
            play(toneName: ScheduleData.shared.toneName)
            playing = false
        }
    }
}

//MARK:- Priavte Methods
extension ToneVC {
    private func play(toneName: String){
        let theAudioPath = Bundle.main.path(forResource: toneName, ofType: "mp3")
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath:theAudioPath!))
        } catch {
            print("Error")
        }
        player.prepareToPlay()
        player.play()
    }
    private func setToneName(_ toneName: String){
        UserDefaults.standard.set(toneName, forKey: "Tone")
    }
}
