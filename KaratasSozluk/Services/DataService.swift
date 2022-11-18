//
//  DataService.swift
//  KaratasSozluk
//
//  Created by Ataugur Karatas on 16.11.2022.
//

import Foundation
import Firebase

let BASE_URL = "https://karatassozluk-default-rtdb.europe-west1.firebasedatabase.app/"

class DataService {
    static let dataService = DataService()
    
    private var _BASE_REF = Database.database().reference(fromURL: "\(BASE_URL)")
    private var _ITEM_REF = Database.database().reference(fromURL: "\(BASE_URL)/items")
    
    var BASE_REF: DatabaseReference {
        return _BASE_REF
    }
    
    var ITEM_REF: DatabaseReference {
        return _ITEM_REF
    }
}
