//
//  ContentView.swift
//  aula3Manha
//
//  Created by Student03 on 19/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .badge(2)
                .tabItem{Label("Home", systemImage: "homekit")
                }
            SquareView()
                .tabItem{Label("Square", systemImage: "square")}
            PhotoView()
                .tabItem{Label("Photos", systemImage: "photo")
            }
            Messages()
                .badge("!")
                .tabItem{
                    Label("Messages", systemImage: "message")}
            Profile().tabItem{
                Label("Profile", systemImage: "person.circle")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
