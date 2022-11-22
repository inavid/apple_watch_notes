//
//  Tools.swift
//  WatchNotes Watch App
//
//  Created by Divani Fuentes on 21/11/22.
//

import Foundation

class Tools {
    static let shared = Tools()
    let key: String = "NotesApp"
    
    private init() { }
    
    func save(array: [Note]) {
        let data = array.map{ try? JSONEncoder().encode($0) }
        UserDefaults.standard.setValue(data, forKey: key)
    }
    
    func load() -> [Note]{
        guard let savedData = UserDefaults.standard.array(forKey: key)
                as? [Data] else {
            return []
        }
        
        return savedData.map { try! JSONDecoder().decode(Note.self, from: $0) }
    }
    
}
