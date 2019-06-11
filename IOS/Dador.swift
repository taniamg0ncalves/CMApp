//
//  Dador.swift
//  IOS
//
//  Created by Tânia Gonçalves on 10/06/2019.
//  Copyright © 2019 ipvc.estg. All rights reserved.
//

import UIKit

class Dadores: Codable {
    let dadores: [Dador]
    
    init(dadores: [Dador]) {
        self.dadores = dadores
        
    }
 }

class Dador: Codable {
    let nome: String
    let tipo: String
    let hospital: String
    
    init(nome: String, tipo: String, hospital: String) {
        self.nome = nome
        self.tipo = tipo
        self.hospital = hospital
    }

   

}
