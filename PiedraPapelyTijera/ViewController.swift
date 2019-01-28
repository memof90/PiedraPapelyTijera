//
//  ViewController.swift
//  PiedraPapelyTijera
//
//  Created by Memo Figueredo on 1/25/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //conectores
    @IBOutlet weak var turnoComputadoraLabel: UILabel!
    
    @IBOutlet weak var labelMensaje: UILabel!
    
    @IBOutlet weak var piedraBoton: UIButton!
    
    @IBOutlet weak var tijeraBoton: UIButton!
    
    @IBOutlet weak var papelBoton: UIButton!
    
    @IBOutlet weak var botonPlay: UIButton!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actualiza(paraEstadoJuego: .inicio)
        
        botonPlay.backgroundColor = .white
    }
 
    // estado de juego con colores
    func actualiza(paraEstadoJuego estadoJuego: EstadoJuego) {
        
        labelMensaje.text = estadoJuego.mensaje
        
        switch estadoJuego {
        case .inicio:
            view.backgroundColor = Colores.brown
           turnoComputadoraLabel.text = "❓"
            
            
        case .gana:
            view.backgroundColor = Colores.blue
        case .pierde:
            view.backgroundColor = Colores.red
        case .empata:
            view.backgroundColor = Colores.pink
        }
    }
   
    //funcion para ej juego
    
    func play(_ jugadorSeñal: Señas){
        
        let señaOponente = señaAletorio()
        let estadoJuego = jugadorSeñal.estadoJuego(versusSeñas: señaOponente)
        
        actualiza(paraEstadoJuego: estadoJuego)
        
        turnoComputadoraLabel.text = señaOponente.valorTexto
        
        switch jugadorSeñal {
        case .piedra:
            break
        case .papel:
            break
        case .tijera:
            break
        }
    }
    
     //acciones
    @IBAction func playPiedra(_ sender: UIButton) {
        play(.piedra)
    }
    
    @IBAction func playTijera(_ sender: UIButton) {
        play(.tijera)
    }
    
    
    @IBAction func playPapel(_ sender: UIButton) {
        play(.papel)
    }
    
    
    
    
    @IBAction func playListo(_ sender: Any) {
        actualiza(paraEstadoJuego: .inicio)
    }
}

