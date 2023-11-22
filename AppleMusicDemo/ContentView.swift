//
//  ContentView.swift
//  AppleMusicDemo
//
//  Created by dmoney on 11/22/23.
//


/*
 All of our assets including symbols to use & Album art
 Navigation Stack
 List View
 Tab Bar
 ZStack For Now Playing!
 
 */

import SwiftUI

struct SongNavigation: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    
}

struct ContentView: View {
    var songStackItem: [SongNavigation] =  [
        
        SongNavigation(name: "Playlists", image: "music.note.list"),
        SongNavigation(name: "Artists", image: "music.mic"),
        SongNavigation(name: "Albums", image: "square.stack"),
        SongNavigation(name: "Songs", image: "music.note"),
        SongNavigation(name: "Genres", image: "guitars"),
        SongNavigation(name: "Compilations", image: "person.2.crop.square.stack"),
        SongNavigation(name: "Composers", image: "music.quarternote.3"),
        
    ]
    var body: some View {
        NavigationStack{
        ZStack {
            VStack {
                Spacer()
                NowPlayingView()
            }
                VStack {
                    List{
                        ForEach(songStackItem) { song in
                            NavigationLink{
                                Text(song.name)
                            }label: {
                                Label(song.name, systemImage: song.image)
                            }
                                                        
                           
                        }
                        


                        
//                        NavigationLink{
//                            Text("Navigation Link Clicked")
//                        }label: {
//                            Label("Playlists", systemImage: "music.note.list")
//                        }
//                        NavigationLink{
//                            Text("Navigation Link Clicked")
//                        }label: {
//                            Label("Artists", systemImage: "music.note.list")
//                        }
//                        NavigationLink{
//                            Text("Navigation Link Clicked")
//                        }label: {
//                            Label("Albums", systemImage: "music.note.list")
//                        }
//                        NavigationLink{
//                            Text("Navigation Link Clicked")
//                        }label: {
//                            Label("Songs", systemImage: "music.note.list")
//                        }
//                        NavigationLink{
//                            Text("Navigation Link Clicked")
//                        }label: {
//                            Label("Genres", systemImage: "music.note.list")
//                        }
//                        NavigationLink{
//                            Text("Navigation Link Clicked")
//                        }label: {
//                            Label("Compilations", systemImage: "music.note.list")
//                        }
//                        NavigationLink{
//                            Text("Navigation Link Clicked")
//                        }label: {
//                            Label("Composers", systemImage: "music.note.list")
//                        }
                    }
                    .listStyle(.inset)
                }
                .padding()
                .navigationTitle("Library")
                .toolbar{
                    VStack{
                        EditButton()
                        Spacer()
                        Image(systemName: "person.circle.fill")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }.offset(y: 30)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
