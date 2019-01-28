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
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actualiza(paraEstadoJuego: .inicio)
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
   
    
    
     //acciones
    @IBAction func playPiedra(_ sender: UIButton) {
        
    }
    
    @IBAction func playTijera(_ sender: UIButton) {
        
    }
    
    
    @IBAction func playPapel(_ sender: UIButton) {
        
    }
    
    
    
    
    @IBAction func playListo(_ sender: Any) {
        actualiza(paraEstadoJuego: .inicio)
    }
}

