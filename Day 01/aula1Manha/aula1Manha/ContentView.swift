//
//  ContentView.swift
//  aula1Manha
//
//  Created by Student03 on 17/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("bg").resizable().scaledToFit().padding()
            Text("HackaTruck").foregroundColor(.blue).bold().font(.system(size: 36))
            HStack {
                Text("Maker").foregroundColor(.yellow)
                Text("Space").foregroundColor(.red)
            }.padding([.bottom, .horizontal]).bold().font(.system(size: 36))
                }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
