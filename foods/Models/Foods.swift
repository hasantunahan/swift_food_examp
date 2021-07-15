//
//  Foods.swift
//  foods
//
//  Created by HasanTunahan on 8.06.2021.
//

import Foundation
import SwiftUI


struct FoodModels : Identifiable{
    
    var id = UUID()
    var name: String;
    var image: String;

}

let foodList = [FoodModels(name: "İzmir Köfte", image: "4"),FoodModels(name: "Patates Kızartması", image: "5") ]



