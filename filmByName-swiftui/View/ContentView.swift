//
//  ContentView.swift
//  kinopoisk-swiftui
//
//  Created by Iliyas Shakhabdin on 11.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var filmName: String = ""
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        ZStack{
            NavigationView{
                VStack{
                    Form{
                        TextField("Write film name", text: $filmName).onSubmit() {
                            self.networkManager.fetchData(filmName: $filmName.wrappedValue)
                        }.onAppear(){
                            self.filmName = ""
                        }
                        NavigationLink(destination:  DetailView(film: networkManager.filmData)){
                            HStack {
                                Text("Go for info")
                            }
                        }
                    }
                }.navigationBarTitle("Find film info by name")
            }
        }
    }
}

#Preview {
    ContentView()
}
