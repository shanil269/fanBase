//
//  Movies.swift
//  fanBase
//
//  Created by Muhaimin on 23/6/20.
//  Copyright © 2020 Muhaimin. All rights reserved.
//

import Foundation

struct Movies {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
