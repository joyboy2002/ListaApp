//
//  ContentView.swift
//  ListaApp
//
//  Created by ISSC_611_2023 on 19/04/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var listaTareas = ListaTareas()
    var body: some View {
        NavigationView{
            List{
                ForEach(listaTareas.tareas){
                   tarea in TareaIndividual(tarea: tarea)
                }
            }.navigationTitle("Tares")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
