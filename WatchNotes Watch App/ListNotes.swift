//
//  ListNotes.swift
//  WatchNotes Watch App
//
//  Created by Divani Fuentes on 21/11/22.
//

import SwiftUI

struct ListNotes: View {
    @State var notes = [Note]()
    
    var body: some View {
        VStack {
            Text("Notas: \(notes.count)")
            List {
                ForEach(notes, id: \.self ) { note in
                    NavigationLink(
                        destination: DetailNote(note: note),
                        label: {
                            Text(note.title).lineLimit(1)
                        }
                    )
                }
                .onDelete(perform: delete)
            }
        }
        .onAppear(perform: {
            notes = Tools.shared.load()
        })
    }
    
    func delete(offsets: IndexSet) {
        withAnimation{
            notes.remove(atOffsets: offsets)
        }
        Tools.shared.save(array: notes)
    }
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
