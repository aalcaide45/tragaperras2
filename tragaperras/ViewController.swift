//
//  ViewController.swift
//  tragaperras
//
//  Created by ALFONSO ALCAIDE on 12/08/2018.
//  Copyright © 2018 ALFONSO ALCAIDE. All rights reserved.
//

import UIKit






class ViewController: UIViewController {

    @IBOutlet weak var displayPremio: UILabel!
    
    
    
    
    
    @IBOutlet weak var displayIzquierdo: UILabel!
    
   
    @IBOutlet weak var displayCentro: UILabel!
    
    
    @IBOutlet weak var displayDerecho: UILabel!
    
    
    @IBOutlet weak var miDinero: UILabel!
    
    
    
    var pantallaIzquierdo : Int = 1
    var pantallaCentro : Int = 1
    var pantallaDerecha : Int = 1
    
    
    var bolsilloInt : Int = 0
    
    let limiteIconos : [String] = ["0", "1", "2", "3", "4", "5", "6"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bolsillo = miDinero.text!
        bolsilloInt = Int (bolsillo)!
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pulsador(_ sender: UIButton) {
        tirada()
        bajaDinero()
    }
    
    func tirada() {
        let caras : UInt32 = UInt32 (limiteIconos.count)
        
        pantallaIzquierdo = Int(arc4random_uniform(caras))
        pantallaCentro = Int(arc4random_uniform(caras))
        pantallaDerecha = Int(arc4random_uniform(caras))
        
        displayIzquierdo.text = String (pantallaIzquierdo)
        displayCentro.text = String (pantallaCentro)
        displayDerecho.text = String (pantallaDerecha)
       
        print("Pantalla Izquierda \(pantallaIzquierdo)")
        print("Pantalla Central \(pantallaCentro)")
        print("Pantalla Derecha \(pantallaDerecha)")
    }
    
    func bajaDinero() {
        
        bolsilloInt -= 1
        miDinero.text = String(bolsilloInt)
        
        print(bolsilloInt)
    }
    
    func compruebaResultado() {
        
        
    }
}

