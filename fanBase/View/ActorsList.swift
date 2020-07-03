//
//  ActorsList.swift
//  fanBase
//
//  Created by Muhaimin on 23/6/20.
//  Copyright © 2020 Muhaimin. All rights reserved.
//

import UIKit

class ActorsList: UICollectionViewCell {
    
    @IBOutlet weak var actorName: UILabel!
    @IBOutlet weak var actorImage: UIImageView!
    
    func updateViews(actors: Actors) {
        actorName.text = actors.name
        actorImage.image = UIImage(named: actors.imageName)
    }
    
}
