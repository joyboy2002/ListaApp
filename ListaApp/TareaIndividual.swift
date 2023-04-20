//
//  TareaIndividual.swift
//  ListaApp
//
//  Created by ISSC_611_2023 on 19/04/23.
//

import SwiftUI

struct TareaIndividual: View {
    @ObservedObject var tarea:Tarea
    
    var body: some View {
        HStack{
            Text(tarea.titulo)
            Spacer()
            if tarea.completado{
                Image(
                    systemName: "checkmark.circle.fill").foregroundColor(.green).onTapGesture {
                        tarea.completado.toggle()
                    }
            }
            else{
                Image(
                    systemName: "circle").foregroundColor(.gray).onTapGesture {
                        tarea.completado.toggle()
                    }

            }
        }
    }
}

