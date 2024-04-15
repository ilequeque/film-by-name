//
//  FilmData.swift
//  kinopoisk-swiftui
//
//  Created by Iliyas Shakhabdin on 12.04.2024.
//

import Foundation
struct FilmData: Decodable {
    var Title: String = ""
    var Director: String = ""
    var Actors: String = ""
    var Plot: String = ""
    var Poster: String?
}
