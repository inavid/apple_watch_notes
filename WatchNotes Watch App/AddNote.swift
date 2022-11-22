//
//  AddNote.swift
//  WatchNotes Watch App
//
//  Created by Divani Fuentes on 21/11/22.
//

import SwiftUI

struct AddNote: View {
    @State private var notes = [Note]()
    @State private var text = ""
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack {
            TextField("Nota", text: $text)
            Button("Agregar Nota") {
                guard text.isEmpty == false else {
                    return
                }
                
                let note = Note(title: text)
                notes.append(note)
                Tools.shared.save(array: notes)
                text = ""
                presentation.wrappedValue.dismiss()
            }
        }
        .onAppear(perform: {
            notes = Tools.shared.load()
        })
    }
}

struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote()
    }
}
