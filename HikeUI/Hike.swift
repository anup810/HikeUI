//
//  Hike.swift
//  HikeUI
//
//  Created by Anup Saud on 2024-07-06.
//

import Foundation
struct Hike: Identifiable,Hashable{
    let id = UUID()
    let name:String
    let photo:String
    let miles: Double
}
