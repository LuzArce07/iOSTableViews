//
//  Alumno.swift
//  TableViews
//
//  Created by Luz Arce on 9/17/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

class Alumno {
    
    var nombre : String
    var apellido : String
    var matricula : String
    var correo : String?
    
    //Inicializador para los no opcionales/obligatorios (sin en ?)
    init(nombre : String, apellido : String, matricula : String) {
        //Aqui se ponen todos los parametros que no sean opcionales/obligatorios
        self.nombre = nombre
        self.apellido = apellido
        self.matricula = matricula
        
    }
    //Inicializador que contiene correo (opcionales)
    init(nombre : String, apellido : String, matricula : String, correo : String) {
        self.nombre = nombre
        self.apellido = apellido
        self.matricula = matricula
        self.correo = correo
        
    }
    
}
