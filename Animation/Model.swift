//
//  Model.swift
//  Animation
//
//  Created by Владислав Сизонов on 11.11.2020.
//

import UIKit


struct Animation {
    var name: String
    var curve: String
    var duration: Double
    
}

extension Animation {
    
    static func getAnimation() -> [Animation] {
        
        var animations: [Animation] = []
        
        let names = DataManager.shared.names.shuffled()
        let curves = DataManager.shared.curves.shuffled()
        let durations = DataManager.shared.durations.shuffled()
        
        
        
        for index in 0..<names.count {
            let animation = Animation(
                name: names[index],
                curve: curves[index],
                duration: durations[index]
               
            )
            
            animations.append(animation)
        }
        
        return animations
    }
}

