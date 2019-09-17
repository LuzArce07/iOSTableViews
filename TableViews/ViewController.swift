//
//  ViewController.swift
//  TableViews
//
//  Created by Luz Arce on 9/13/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Arreglo de alumnos con la informacion que quiero poner en la tabla
    var alumnos : [Alumno] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alumnos.append(Alumno(nombre: "Luz", apellido: "Arce", matricula: "luz383"))
        alumnos.append(Alumno(nombre: "Fer", apellido: "Barraza", matricula: "fer875"))
        alumnos.append(Alumno(nombre: "Ali", apellido: "Galicia", matricula: "ali573"))
        
        alumnos.append(Alumno(nombre: "Eliud", apellido: "Lizarraga", matricula: "jel358", correo: "jelm@gmail.com"))
        
    }
    
    //El numero de secciones que tendra (siempre 1) (Columnas)
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1 //Las secciones
    
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return alumnos.count //El arreglo
        
    }
    
    //Contenido de cada celda (fila)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as? CeldaAlumnoController // as Es para un casting
        celda?.lblNombre.text = alumnos[indexPath.row].nombre
        celda?.lblApellidos.text = alumnos[indexPath.row].apellido
        celda?.lblMatricula.text = alumnos[indexPath.row].matricula
        celda?.lblCorreo.text = alumnos[indexPath.row].correo
        
        
        return celda! 
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(alumnos[indexPath.row].correo != nil){
            
            return 120
            
        } else {
            
            return 85
        }
        
    }
    
}

