//
//  Moneda.swift
//  iMoneda
//
//  Created by Máster Móviles on 22/10/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import Foundation

class Moneda {
    
    //MARK: Functions
    func lanzar() -> Tirada {
        let tirada = Int(arc4random_uniform(UInt32(2)))
        
        if tirada == 0 {
            return Tirada.cara
        } else {
            return Tirada.cruz
        }
    }
}
