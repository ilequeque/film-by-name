//
//  NetworkManager.swift
//  kinopoisk-swiftui
//
//  Created by Iliyas Shakhabdin on 12.04.2024.
//

import Foundation

class NetworkManager: ObservableObject {
    let YOUR_API_KEY = "XXX"
    @Published var filmData = FilmData()
    
    func fetchData(filmName: String) {
        if let url = URL(string: "https://www.omdbapi.com/?apikey=\(YOUR_API_KEY)&t=\(filmName)"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let results = try decoder.decode(FilmData.self, from: safeData)
                            DispatchQueue.main.async {
                                self.filmData = results
                                print(self.filmData.Title)
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
