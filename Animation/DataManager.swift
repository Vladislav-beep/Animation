//
//  DataManager.swift
//  Animation
//
//  Created by Владислав Сизонов on 11.11.2020.
//

import UIKit


class DataManager {
    
    static let shared = DataManager()
    
    var names = [
        "slideUp", "shake", "pop", "swing",
        "zoomIn"
    ]
    
    let curves = [
        "easeIn", "linear", "IeaseOutCubic", "easeInBack",
        "easeInExpo"
    ]
    
    let durations = [0.6, 0.7, 0.5, 0.6, 0.65]
    
    
    private init() {}
}
