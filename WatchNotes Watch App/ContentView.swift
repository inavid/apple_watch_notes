//
//  ContentView.swift
//  WatchNotes Watch App
//
//  Created by Divani Fuentes on 21/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Agregar Nota", destination: AddNote())
                NavigationLink("Listar Notas", destination: ListNotes())
            }
        }.foregroundColor(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
