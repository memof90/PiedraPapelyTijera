//
//  Señas.swift
//  PiedraPapelyTijera
//
//  Created by Memo Figueredo on 1/25/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import Foundation
import GameplayKit

//función aleatorio heredada del framework gamePlayKit

let turnoAleatorio = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func señaAletorio()-> Señas {
    
    let seña = turnoAleatorio.nextInt()
    
    if seña == 0 {
        return .piedra
    } else if seña == 1 {
        return .papel
    } else {
        return .tijera
    }
}


//Señas= como se comporta el juego

enum Señas {
    case piedra
    case papel
    case tijera
    
    //función que permite establcer una relación entre la seña y el estado del juego (pierde,gana y empata)
    func estadoJuego(versusSeñas: Señas)-> EstadoJuego {
        
        if self == versusSeñas {
            return .empata
        }
        
        //comportamiento funcionamiento del juego
        
        switch self {
        case .piedra:
            if versusSeñas == .tijera {
                return .gana
            }
            
        case .papel:
            if versusSeñas == .piedra {
                return .gana
            }
        case .tijera:
            if versusSeñas == .papel {
                return .gana
            }
        }
        return .pierde
    }
    
    //se creo una propiedad que controla la salida en la aplicación de las señas
    
    var valorTexto: String {
        
        switch self {
        case .piedra:
            return "👊"
        
        case .tijera:
            return "✌️"
            
        case .papel:
            return "🤚🏻"
        }
    }
}
