//
//  TheImageVC.swift
//  Tiger Gym
//
//  Created by Mohamed Elshaer on 11/11/17.
//  Copyright © 2017 Mohamed Elshaer. All rights reserved.
//

import UIKit
import AVFoundation

class TrainVC: UIViewController {
    
    @IBOutlet weak var trainImageView: UIImageView!
    @IBOutlet weak var trainCountLabel: UILabel!
    @IBOutlet weak var trainWeightLabel: UILabel!
    @IBOutlet weak var startLabel: UIButton!
    @IBOutlet weak var settingBtn: UIBarButtonItem!
    
    
    var myChose = 0
    var myTrain = 0
    var theDay = 0
    
    var time = 59
    var theRealTime = 0
    var counter = 0
    
    var theTimer = Timer()
    var player = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setTheTrain()
        
    }

    private func setTheTrain(){
        
        if myChose == 0 {
            
            if theDay == 0 {
                
                if myTrain == 0 {
                    
                    setTrainInfo(trainCount: Constants.shared.train103, trainWeight: Constants.shared.genWeight ,trainImage: "332")
                    
                }else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.train103, trainWeight: Constants.shared.genWeight ,trainImage: "311")
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.train103, trainWeight: Constants.shared.genWeight ,trainImage: "300")
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.train103, trainWeight: Constants.shared.genWeight ,trainImage: "309")
                    
                }else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.train103, trainWeight: Constants.shared.genWeight ,trainImage: "368")
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.train103, trainWeight: Constants.shared.genWeight ,trainImage: "416")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.train103, trainWeight: Constants.shared.genWeight ,trainImage: "91")
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.train103, trainWeight: Constants.shared.genWeight ,trainImage: "50")
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.train103, trainWeight: Constants.shared.genWeight ,trainImage: "176")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.train103, trainWeight: Constants.shared.genWeight ,trainImage: "177")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.train103, trainWeight: Constants.shared.empty ,trainImage: "328")
                    
                } else if myTrain == 11 {
                    
                    setTrainInfo(trainCount: Constants.shared.train103, trainWeight: Constants.shared.empty ,trainImage: "11")
                    
                }
                
                
                
            } else if theDay == 1  {
                
                if myTrain == 0 {
                    
                    setTrainInfo(trainCount: Constants.shared.train104, trainWeight: Constants.shared.genWeight ,trainImage: "332")
                    
                }else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.train104, trainWeight: Constants.shared.genWeight ,trainImage: "311")
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.train104, trainWeight: Constants.shared.genWeight ,trainImage: "300")
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.train104, trainWeight: Constants.shared.genWeight ,trainImage: "309")
                    
                }else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.train104, trainWeight: Constants.shared.genWeight ,trainImage: "368")
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.train104, trainWeight: Constants.shared.genWeight ,trainImage: "416")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.train104, trainWeight: Constants.shared.genWeight ,trainImage: "91")
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.train104, trainWeight: Constants.shared.genWeight ,trainImage: "50")
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.train104, trainWeight: Constants.shared.genWeight ,trainImage: "176")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.train104, trainWeight: Constants.shared.genWeight ,trainImage: "177")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.train104, trainWeight: Constants.shared.empty ,trainImage: "328")
                    
                } else if myTrain == 11 {
                    
                    setTrainInfo(trainCount: Constants.shared.train104, trainWeight: Constants.shared.empty ,trainImage: "11")
                    
                }
                
            }
            
        }else if myChose == 1 {
            
            if theDay == 0 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "309")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "300")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "409")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "408")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "299")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "307")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "410")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "19")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.higher, trainImage: "7")
                    
                }
                
            } else if theDay == 1 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "332")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "412")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "325")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "311")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "331")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "411")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "98")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "328")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "11")
                    
                }
                
            } else if theDay == 2 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "368")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "416")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "369")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "401")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "406")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "370")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "361")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "19")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.higher, trainImage: "7")
                    
                }
            } else if theDay == 3 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "90")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "78")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "82")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "124")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "39")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "40")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "51")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "328")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "11")
                    
                }
                
            } else if theDay == 4 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "184")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "190")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "176")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "177")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "199")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "419")
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "54")
                    
                }
                
            }
            
            
            
        } else if myChose == 2 {
            
            if theDay == 0 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "300")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "408")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "309")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "409")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "299")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "307")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "410")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "19")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.higher, trainImage: "7")
                    
                }
                
            } else if theDay == 1 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "332")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "329")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "325")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "331")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "411")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "98")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "328")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "11")
                    
                }
                
            } else if theDay == 2 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "368")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "369")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "416")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "401")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "406")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "361")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "19")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.higher, trainImage: "7")
                    
                }
            } else if theDay == 3 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "42")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "61")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "51")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "410")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "82")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "52")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "90")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "124")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "328")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.higher, trainImage: "11")
                    
                }
                
            } else if theDay == 4 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "184")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "190")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "205")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "176")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "177")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "199")
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "419")
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.bulk_A, trainWeight: Constants.shared.higher, trainImage: "54")
                    
                }
            }
            
            
        } else if myChose == 3 {
            
            if theDay == 0 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "414")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "413")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "309")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "300")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "307")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "1")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "42")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "410")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "414")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "170")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "19")
                    
                } else if myTrain == 11 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.higher, trainImage: "7")
                    
                }
                
            } else if theDay == 1 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "414")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "413")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "332")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "311")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "411")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "90")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "52")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "124")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "414")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "170")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "328")
                    
                }else if myTrain == 11 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "11")
                    
                }
                
            } else if theDay == 2 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "414")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "413")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "368")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "416")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "406")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "184")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "176")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "177")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "419")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "414")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "170")
                    
                } else if myTrain == 11 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "19")
                    
                } else if myTrain == 12 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.higher, trainImage: "7")
                    
                }
            } else if theDay == 3 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.min20, trainWeight: Constants.shared.empty, trainImage: "414")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.min20, trainWeight: Constants.shared.empty, trainImage: "170")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "328")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "11")
                    
                    
                }
            }
            
        } else if myChose == 4 {
            
            if theDay == 0 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "414")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "413")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "409")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "408")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "307")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "1")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "42")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "51")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "414")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "170")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "19")
                    
                } else if myTrain == 11 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.higher, trainImage: "7")
                    
                }
                
            } else if theDay == 1 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "414")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "413")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "332")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "325")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "1")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "90")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "78")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "98")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "414")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "170")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "328")
                    
                }else if myTrain == 11 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "11")
                    
                }
                
            } else if theDay == 2 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "414")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "413")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "369")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "401")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "406")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "205")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "176")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "177")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.theLoss, trainImage: "419")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "414")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "170")
                    
                } else if myTrain == 11 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "19")
                    
                } else if myTrain == 12 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.higher, trainImage: "7")
                    
                }
            } else if theDay == 3 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.min20, trainWeight: Constants.shared.empty, trainImage: "414")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.min20, trainWeight: Constants.shared.empty, trainImage: "170")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "328")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "11")
                    
                    
                }
            }
            
        } else if myChose == 5 {
            
            if theDay == 0 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "309")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "332")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "300")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "311")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "307")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "411")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "299")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "331")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "19")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.higher, trainImage: "7")
                    
                }
            } else if theDay == 1 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "368")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "176")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "416")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "177")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "406")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "199")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "361")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "419")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "328")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "11")
                    
                }
                
            } else if theDay == 2 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "51")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "97")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "410")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "82")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "40")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "124")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "415")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.train8, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "19")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.higher, trainImage: "7")
                    
                }
            }
        } else if myChose == 6 {
            
            if theDay == 0 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "417")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "414")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "170")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "19")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.higher, trainImage: "7")
                    
                }
                
            } else if theDay == 1 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "332")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "325")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "311")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "411")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "415")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "414")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "170")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "328")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "11")
                    
                }
                
                
            } else if theDay == 2 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "369")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "406")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "361")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "62")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "414")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "170")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "19")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.higher, trainImage: "7")
                    
                }
                
            } else if theDay == 3 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "82")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "42")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "119")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "1")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "414")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "170")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "328")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.empty, trainImage: "11")
                    
                }
            } else if theDay == 4 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty ,trainImage: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "184")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "205")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "176")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "177")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "199")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(trainCount: Constants.shared.loss, trainWeight: Constants.shared.higher, trainImage: "419")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "414")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(trainCount: Constants.shared.min15, trainWeight: Constants.shared.empty, trainImage: "170")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(trainCount: Constants.shared.min5, trainWeight: Constants.shared.empty, trainImage: "19")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(trainCount: Constants.shared.train15, trainWeight: Constants.shared.higher, trainImage: "7")
                    
                } } } }
    
    
    private func setTrainInfo(trainCount:String,trainWeight:String,trainImage:String) {
        
        trainCountLabel.text = trainCount
        trainWeightLabel.text = trainWeight
        trainImageView.image = UIImage(named : trainImage)
        
        switch trainCount {
        case Constants.shared.train103,Constants.shared.train104,Constants.shared.train15,
             Constants.shared.loss,Constants.shared.bulk_A,Constants.shared.train8:
            startLabel.isHidden = true
        default:
            startLabel.isHidden = false

        }
        
        switch trainCount {
        case Constants.shared.min5:
            theRealTime = 5
        case Constants.shared.min15:
            theRealTime = 15
        default:
            theRealTime = 20
        }
        
        counter = theRealTime - 1
    }
    
    @objc func timerAction(){
        
        time -= 1
        trainCountLabel.text = "\(counter):\(time)"
        
        if time == 0 && counter == 0 {
            
            theTimer.invalidate()
            trainCountLabel.text = "\(theRealTime) Min"
            startLabel.isHidden = false
            let tone = UserDefaultManger.shared.getToneName()
            playSound(TheToneName: tone)
            showAlert()
            
        } else if time == 0 {
            
            time = 59
            counter -= 1
            
        }
        
    }
    
    private func playSound (TheToneName:String){
        
        let audioPath = Bundle.main.path(forResource: TheToneName, ofType: "mp3")
        
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath:audioPath!))
            
        } catch {
            
            print("Error")
        }
        
        player.prepareToPlay()
        player.play()
        
        
    }
    
    private func showAlert (){
        
        let errorAlert = UIAlertController(title: "Time Over", message: "The Time End", preferredStyle: .alert)
        errorAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: {(action) in self.player.stop()}))
        self.present(errorAlert, animated: true, completion: nil)
        
    }
    
    @IBAction func startBtnPressed(_ sender: Any) {
        
        theTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        startLabel.isHidden = true
        
    }
    
}
