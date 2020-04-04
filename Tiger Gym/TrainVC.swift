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
                    
                    setTrainInfo(numberOne: ScheduleData.train103, numberTwo: ScheduleData.genWeight ,numberThree: "332")
                    
                }else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.train103, numberTwo: ScheduleData.genWeight ,numberThree: "311")
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.train103, numberTwo: ScheduleData.genWeight ,numberThree: "300")
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.train103, numberTwo: ScheduleData.genWeight ,numberThree: "309")
                    
                }else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.train103, numberTwo: ScheduleData.genWeight ,numberThree: "368")
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.train103, numberTwo: ScheduleData.genWeight ,numberThree: "416")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.train103, numberTwo: ScheduleData.genWeight ,numberThree: "91")
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.train103, numberTwo: ScheduleData.genWeight ,numberThree: "50")
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.train103, numberTwo: ScheduleData.genWeight ,numberThree: "176")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.train103, numberTwo: ScheduleData.genWeight ,numberThree: "177")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.train103, numberTwo: ScheduleData.empty ,numberThree: "328")
                    
                } else if myTrain == 11 {
                    
                    setTrainInfo(numberOne: ScheduleData.train103, numberTwo: ScheduleData.empty ,numberThree: "11")
                    
                }
                
                
                
            } else if theDay == 1  {
                
                if myTrain == 0 {
                    
                    setTrainInfo(numberOne: ScheduleData.train104, numberTwo: ScheduleData.genWeight ,numberThree: "332")
                    
                }else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.train104, numberTwo: ScheduleData.genWeight ,numberThree: "311")
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.train104, numberTwo: ScheduleData.genWeight ,numberThree: "300")
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.train104, numberTwo: ScheduleData.genWeight ,numberThree: "309")
                    
                }else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.train104, numberTwo: ScheduleData.genWeight ,numberThree: "368")
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.train104, numberTwo: ScheduleData.genWeight ,numberThree: "416")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.train104, numberTwo: ScheduleData.genWeight ,numberThree: "91")
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.train104, numberTwo: ScheduleData.genWeight ,numberThree: "50")
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.train104, numberTwo: ScheduleData.genWeight ,numberThree: "176")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.train104, numberTwo: ScheduleData.genWeight ,numberThree: "177")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.train104, numberTwo: ScheduleData.empty ,numberThree: "328")
                    
                } else if myTrain == 11 {
                    
                    setTrainInfo(numberOne: ScheduleData.train104, numberTwo: ScheduleData.empty ,numberThree: "11")
                    
                }
                
            }
            
        }else if myChose == 1 {
            
            if theDay == 0 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "309")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "300")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "409")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "408")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "299")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "307")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "410")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "19")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.higher, numberThree: "7")
                    
                }
                
            } else if theDay == 1 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "332")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "412")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "325")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "311")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "331")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "411")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "98")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "328")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "11")
                    
                }
                
            } else if theDay == 2 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "368")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "416")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "369")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "401")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "406")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "370")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "361")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "19")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.higher, numberThree: "7")
                    
                }
            } else if theDay == 3 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "90")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "78")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "82")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "124")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "39")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "40")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "51")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "328")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "11")
                    
                }
                
            } else if theDay == 4 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "184")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "190")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "176")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "177")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "199")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "419")
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "54")
                    
                }
                
            }
            
            
            
        } else if myChose == 2 {
            
            if theDay == 0 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "300")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "408")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "309")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "409")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "299")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "307")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "410")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "19")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.higher, numberThree: "7")
                    
                }
                
            } else if theDay == 1 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "332")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "329")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "325")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "331")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "411")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "98")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "328")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "11")
                    
                }
                
            } else if theDay == 2 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "368")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "369")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "416")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "401")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "406")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "361")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "19")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.higher, numberThree: "7")
                    
                }
            } else if theDay == 3 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "42")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "61")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "51")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "410")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "82")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "52")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "90")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "124")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "328")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.higher, numberThree: "11")
                    
                }
                
            } else if theDay == 4 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "184")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "190")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "205")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "176")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "177")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "199")
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "419")
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.bulk_A, numberTwo: ScheduleData.higher, numberThree: "54")
                    
                }
            }
            
            
        } else if myChose == 3 {
            
            if theDay == 0 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "414")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "413")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "309")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "300")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "307")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "1")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "42")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "410")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "414")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "170")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "19")
                    
                } else if myTrain == 11 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.higher, numberThree: "7")
                    
                }
                
            } else if theDay == 1 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "414")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "413")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "332")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "311")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "411")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "90")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "52")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "124")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "414")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "170")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "328")
                    
                }else if myTrain == 11 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "11")
                    
                }
                
            } else if theDay == 2 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "414")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "413")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "368")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "416")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "406")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "184")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "176")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "177")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "419")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "414")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "170")
                    
                } else if myTrain == 11 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "19")
                    
                } else if myTrain == 12 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.higher, numberThree: "7")
                    
                }
            } else if theDay == 3 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.min20, numberTwo: ScheduleData.empty, numberThree: "414")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.min20, numberTwo: ScheduleData.empty, numberThree: "170")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "328")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "11")
                    
                    
                }
            }
            
        } else if myChose == 4 {
            
            if theDay == 0 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "414")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "413")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "409")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "408")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "307")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "1")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "42")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "51")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "414")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "170")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "19")
                    
                } else if myTrain == 11 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.higher, numberThree: "7")
                    
                }
                
            } else if theDay == 1 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "414")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "413")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "332")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "325")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "1")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "90")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "78")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "98")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "414")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "170")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "328")
                    
                }else if myTrain == 11 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "11")
                    
                }
                
            } else if theDay == 2 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "414")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "413")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "369")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "401")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "406")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "205")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "176")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "177")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.theLoss, numberThree: "419")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "414")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "170")
                    
                } else if myTrain == 11 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "19")
                    
                } else if myTrain == 12 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.higher, numberThree: "7")
                    
                }
            } else if theDay == 3 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.min20, numberTwo: ScheduleData.empty, numberThree: "414")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.min20, numberTwo: ScheduleData.empty, numberThree: "170")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "328")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "11")
                    
                    
                }
            }
            
        } else if myChose == 5 {
            
            if theDay == 0 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "309")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "332")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "300")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "311")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "307")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "411")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "299")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "331")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "19")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.higher, numberThree: "7")
                    
                }
            } else if theDay == 1 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "368")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "176")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "416")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "177")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "406")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "199")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "361")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "419")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "328")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "11")
                    
                }
                
            } else if theDay == 2 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "51")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "97")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "410")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "82")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "40")
                    
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "124")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "415")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.train8, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "19")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.higher, numberThree: "7")
                    
                }
            }
        } else if myChose == 6 {
            
            if theDay == 0 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "417")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "414")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "170")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "19")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.higher, numberThree: "7")
                    
                }
                
            } else if theDay == 1 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "332")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "325")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "311")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "411")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "415")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "414")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "170")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "328")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "11")
                    
                }
                
                
            } else if theDay == 2 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "369")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "406")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "361")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "62")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "414")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "170")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "19")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.higher, numberThree: "7")
                    
                }
                
            } else if theDay == 3 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "82")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "42")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "119")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "1")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "414")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "170")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "328")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.empty, numberThree: "11")
                    
                }
            } else if theDay == 4 {
                
                if myTrain == 0  {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty ,numberThree: "413")
                    
                }  else if myTrain == 1 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "184")
                    
                    
                } else if myTrain == 2 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "205")
                    
                    
                } else if myTrain == 3 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "176")
                    
                    
                } else if myTrain == 4 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "177")
                    
                    
                } else if myTrain == 5 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "199")
                    
                } else if myTrain == 6 {
                    
                    setTrainInfo(numberOne: ScheduleData.loss, numberTwo: ScheduleData.higher, numberThree: "419")
                    
                    
                } else if myTrain == 7 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "414")
                    
                    
                } else if myTrain == 8 {
                    
                    setTrainInfo(numberOne: ScheduleData.min15, numberTwo: ScheduleData.empty, numberThree: "170")
                    
                } else if myTrain == 9 {
                    
                    setTrainInfo(numberOne: ScheduleData.min5, numberTwo: ScheduleData.empty, numberThree: "19")
                    
                } else if myTrain == 10 {
                    
                    setTrainInfo(numberOne: ScheduleData.train15, numberTwo: ScheduleData.higher, numberThree: "7")
                    
                } } } }
    
    
    private func setTrainInfo(numberOne:String,numberTwo:String,numberThree:String) {
        
        trainCountLabel.text = numberOne
        trainWeightLabel.text = numberTwo
        trainImageView.image = UIImage(named : numberThree)
        
        if numberOne == ScheduleData.train103 || numberOne == ScheduleData.train104  || numberOne == ScheduleData.train15 || numberOne == ScheduleData.loss || numberOne == ScheduleData.bulk_A  || numberOne == ScheduleData.train8
        {
            startLabel.isHidden = true
        }
        if numberOne == ScheduleData.min5 {theRealTime = 5 }else if numberOne == ScheduleData.min15 {theRealTime = 15 }else {theRealTime = 20}
        
        counter = theRealTime - 1
    }
    
    @objc func timerAction(){
        
        time -= 1
        trainCountLabel.text = "\(counter):\(time)"
        
        if time == 0 && counter == 0 {
            
            theTimer.invalidate()
            trainCountLabel.text = "\(theRealTime) Min"
            startLabel.isHidden = false
            playSound(TheToneName: toneName)
            showAlert()
            
        } else if time == 0 {
            
            time = 59
            counter -= 1
            
        }
        
    }
    
    private func playSound (TheToneName:String){
        
        
        let TheAudioPath = Bundle.main.path(forResource: TheToneName, ofType: "mp3")
        
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath:TheAudioPath!))
            
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
    
    @IBAction func Start(_ sender: Any) {
        
        theTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        startLabel.isHidden = true
    }
    
}
