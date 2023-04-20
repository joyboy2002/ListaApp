//
//  Tarea.swift
//  ListaApp
//
//  Created by ISSC_611_2023 on 19/04/23.
//

import Foundation

class Tarea : Identifiable, ObservableObject{
    var id = UUID()
    @Published var titulo : String = ""
    @Published var completado : Bool = false
    
    init(titulo: String, completado: Bool) {
        self.titulo = titulo
        self.completado = completado
    }
   
}
class ListaTareas : ObservableObject{
    @Published var tareas : [Tarea] = [
        Tarea(titulo: "Corte de cabello", completado: false),
        Tarea(titulo: "Lavar coche", completado: false),
        Tarea(titulo: "Reprobar alumnos", completado: false)
    ]
}

