//
//  DetailNote.swift
//  WatchNotes Watch App
//
//  Created by Divani Fuentes on 21/11/22.
//

import SwiftUI

struct DetailNote: View {
    let note: Note

    var body: some View {
        VStack {
            Text(note.title)
                .font(.system(size: 20))
                .foregroundColor(.white)
                .fontWeight(.bold)
            Spacer()
            Text(note.creationDate)
                .font(.system(size: 12))
                .fontWeight(.light)
                .foregroundColor(.purple)
        }
    }
}

struct DetailNote_Previews: PreviewProvider {
    static var previews: some View {
        let note = Note(title: "Ejemplo")
        DetailNote(note: note)
    }
}
