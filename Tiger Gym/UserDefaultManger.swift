//
//  Manger.swift
//  Tiger Gym
//
//  Created by Mohamed Elshaer on 4/14/20.
//  Copyright © 2020 Mohamed Elshaer. All rights reserved.
//

import Foundation

struct UserDefaultManger {
    
    static var shared = UserDefaultManger()
    
    func setToneName (toneName:String){
        
        UserDefaults.standard.set(toneName, forKey: "Tone")
        UserDefaults.standard.synchronize()
        
    }
    
    func getToneName () -> String {
        
        return UserDefaults.standard.value(forKey: "Tone") as? String ?? ""
        
    }
}
