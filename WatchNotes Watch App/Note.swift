//
//  Note.swift
//  WatchNotes Watch App
//
//  Created by Divani Fuentes on 21/11/22.
//

import SwiftUI

struct Note: Identifiable, Hashable, Codable {
    var id: UUID
    var title: String
    var creationDate: String
    
    init(title: String) {
        self.id = UUID()
        self.title = title
        
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
        
        self.creationDate = dateFormatter.string(from: date)
    }
}
