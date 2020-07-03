//
//  DataService.swift
//  fanBase
//
//  Created by Muhaimin on 23/6/20.
//  Copyright © 2020 Muhaimin. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let movies = [
        Movies(title: "The Godfather", imageName: "godFather.jpg"),
        Movies(title: "The Shawshank Redemption", imageName: "theShawshankRedemption.jpg"),
        Movies(title: "Schindler's List", imageName: "schindlersList.jpg")
    ]
    func getMovies() -> [Movies] {
        return movies
    }
    private let godFather = [
        Actors(name: "Al pacino", imageName: "alpacino.jpg"),
        Actors(name: "James Cann", imageName: "jamesCann.jpg"),
        Actors(name: "Marlon Brando", imageName: "marlonBrando.jpg")
    ]
    private let theShawshankRedemption = [
        Actors(name: "Tim Robbins", imageName: "timRobbins.jpg"),
        Actors(name: "Morgan Freeman", imageName: "morganFreeman.jpg"),
        Actors(name: "Bob Gunton", imageName: "bobGunton.jpg")
    ]
    private let schindlersList = [
        Actors(name: "Liam Neeson", imageName: "liamNeeson.jpg"),
        Actors(name: "Ben Kingsley", imageName: "benKingsley.jpg"),
        Actors(name: "Ralph Fiennes", imageName: "ralphFiennes.jpg")
    ]
    func getActors(forMovieTitle title: String) -> [Actors] {
        switch title {
        case "The Godfather":
            return getGodFather()

        case "The Shawshank Redemption":
            return getShawshankRedemption()

        case "Schindler's List":
            return getSchindlersList()

        default:
            return getGodFather()
        }
    }
    func getGodFather() -> [Actors] {
        return godFather
    }
    func getShawshankRedemption() -> [Actors] {
        return theShawshankRedemption
    }
    func getSchindlersList() -> [Actors] {
        return schindlersList
    }

}
