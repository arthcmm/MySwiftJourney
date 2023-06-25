//
//  ContentView.swift
//  Aula7cManha
//
//  Created by Student03 on 05/06/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var p: Distancia
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    @State var distanciaAtual = 0
    var body: some View {
        NavigationStack{
            VStack{
                AsyncImage(url: URL(string: "https://m.media-amazon.com/images/I/61ErqR3+4VL._AC_SX355_.jpg"), content: {image in image.resizable()}
                           ,placeholder: {ProgressView()}).ignoresSafeArea()
                    .aspectRatio( contentMode: .fill)
                    .frame(width: 250, height: 250)
                Text("\(distanciaAtual)").font(.title).foregroundColor(.black)
                Text("Distância: \(distanciaAtual)")
                    .onTapGesture {
                        distanciaAtual = p.distancia!
                    }
            }
            .foregroundColor(.white)
            .ignoresSafeArea()
            .background(Color("gri"))
        }.onAppear(){
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(p: Distancia(_id: "", _rev: "", distancia: 0))
    }
}
