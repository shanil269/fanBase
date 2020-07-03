//
//  MoviesList.swift
//  fanBase
//
//  Created by Muhaimin on 23/6/20.
//  Copyright © 2020 Muhaimin. All rights reserved.
//

import UIKit

class MoviesList: UITableViewCell {
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var actorCollectionView: UICollectionView!
    
    func updateViews(movies: Movies) {
        movieImage.image = UIImage(named: movies.imageName)
        movieTitle.text = movies.title
    }

}
