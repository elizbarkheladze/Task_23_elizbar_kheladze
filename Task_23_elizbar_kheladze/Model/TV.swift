//
//  TV.swift
//  Task_23_elizbar_kheladze
//
//  Created by alta on 8/16/22.
//

import Foundation


struct TVResponce : Decodable {
    
    let results: [TVId]
}



struct TVId : Decodable {
    let id : Int
}

struct TVDetails: Decodable {
    let id : Int
    let name: String
    let number_of_episodes: Int
}
