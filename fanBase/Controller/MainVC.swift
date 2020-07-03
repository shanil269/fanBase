//
//  MainVC.swift
//  fanBase
//
//  Created by Muhaimin on 22/6/20.
//  Copyright © 2020 Muhaimin. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var moviesTable: UITableView!
    
    private(set) public var actors = [Actors]()
    private var movies = [Movies]()
    private var currentMovie: Movies?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getMovies()
        moviesTable.dataSource = self
        moviesTable.delegate = self
    }
    func getMovies() {
        movies = DataService.instance.getMovies()
    }

}

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MoviesList") as? MoviesList {
            currentMovie = movies[indexPath.row]
            cell.updateViews(movies: movies[indexPath.row])
            cell.actorCollectionView.delegate = self
            cell.actorCollectionView.dataSource = self
            return cell
        } else {
            return MoviesList()
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 271
    }
}
extension MainVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let currentMovie = currentMovie {
            return DataService.instance.getActors(forMovieTitle: currentMovie.title).count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorsList", for: indexPath) as? ActorsList {
            if let currentMovie = currentMovie {
                let actors = DataService.instance.getActors(forMovieTitle: currentMovie.title)
                cell.updateViews(actors: actors[indexPath.row])
                return cell
            }

        }
        return ActorsList()
    }
}
