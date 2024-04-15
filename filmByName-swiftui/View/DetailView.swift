//
//  DetailView.swift
//  kinopoisk-swiftui
//
//  Created by Iliyas Shakhabdin on 12.04.2024.
//

import SwiftUI

struct DetailView: View {
    
    let film: FilmData
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: film.Poster ?? "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/600px-No_image_available.svg.png"), scale: 1.5)
            Text("Title: \(film.Title)").padding(.vertical)
            Text("Director: \(film.Director)").padding(.vertical)
            Text("Cast: \(film.Actors)").padding(.vertical)
            Text("Plot: \(film.Plot)")
        }
    }
}
let givenFilm = FilmData(Title: "gone girl", Director: "Fincher", Actors: "Ben Affleck, Rosamund Pike", Plot: "Affleck cries over gone girl")
#Preview {
    DetailView(film: givenFilm)
}
