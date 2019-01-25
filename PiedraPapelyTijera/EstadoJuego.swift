//
//  EstadoJuego.swift
//  PiedraPapelyTijera
//
//  Created by Memo Figueredo on 1/25/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import Foundation

enum EstadoJuego {
    case inicio
    case gana
    case pierde
    case empata
    
    
    var mensaje: String {
        
        switch self {
        case .inicio:
            return "Piedra,Papel y Tijera"
        case .gana:
            return "Ganaste"
        case .pierde:
            return "Perdiste"
        case .empata: return "Es un empate"
        }
    }
    
    
}
