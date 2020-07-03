//
//  Actors.swift
//  fanBase
//
//  Created by Muhaimin on 23/6/20.
//  Copyright © 2020 Muhaimin. All rights reserved.
//

import Foundation

struct Actors {
    private(set) public var name: String
    private(set) public var imageName: String
    
    init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }
}
