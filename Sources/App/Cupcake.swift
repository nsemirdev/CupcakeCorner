//
//  File.swift
//  
//
//  Created by Emir Alkal on 9.01.2023.
//

import Foundation
import Vapor

struct Cupcake: Codable {
    var id: Int?
    var name: String
    var description: String
    var price: Int
}
