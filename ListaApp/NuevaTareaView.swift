//
//  NuevaTareaView.swift
//  ListaApp
//
//  Created by ISSC_611_2023 on 19/04/23.
//

import SwiftUI

struct NuevaTareaView: View {
    @Environment (\.presentationMode) var presentationMode
    @ObservedObject var listaTareas: ListaTareas
    @State private var nuevaTareaTitulo = ""
    
    var body: some View {
        NavigationView{
            Form{
                TextField("Titulo de la tarea", text:  $nuevaTareaTitulo)
            }
            .navigationBarTitle("Nueva Tarea", displayMode: .inline)
            .navigationBarItems(leading: Button("Cancelar"){
                self.presentationMode.wrappedValue.dismiss()
            },
            trailing: Button("Guardar"){
                guardarTarea()
                presentationMode.wrappedValue.dismiss()
            }
            )
        }
    }
    private func guardarTarea(){
        let tarea = Tarea(titulo: nuevaTareaTitulo, completado: false)
        listaTareas.tareas.append(tarea)
    }
}

