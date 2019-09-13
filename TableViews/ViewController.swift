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
    let alumnos = ["Gabriel", "Ana Lourdes", "Joel", "Trejo", "Araceli", "Karen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
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
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno")
        
        return celda! 
        
    }
    
}

