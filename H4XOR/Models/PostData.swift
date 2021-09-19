//
//  PostData.swift
//  H4XOR
//
//  Created by Jovial Software on 13/11/1941 Saka.
//  Copyright © 1941 Jovial Software. All rights reserved.
//

import Foundation
import Foundation

struct Results: Decodable {
    let hits: [Post]
}
 
struct Post: Decodable, Identifiable {
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
