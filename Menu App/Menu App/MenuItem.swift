//
//  MenuItems.swift
//  Menu App
//
//  Created by Adil Aman Mohammed on 5/27/24.
//

import Foundation

struct MenuItem : Identifiable{
    var id: UUID = UUID()
    
    var name:String
    var price:String
    var imageName:String
}
