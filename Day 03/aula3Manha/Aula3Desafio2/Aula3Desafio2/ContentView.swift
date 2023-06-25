//
//  ContentView.swift
//  Aula3Desafio2
//
//  Created by Student03 on 19/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack{
                NavigationLink("Modo 1", destination: Modo1())
                NavigationLink("Modo 2", destination: Modo2())
                NavigationLink("Modo 3", destination: Modo3())
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
