//
//  desafio3.swift
//  aula1Manha
//
//  Created by Student03 on 17/05/23.
//

import SwiftUI

struct desafio3: View {
    @State private var nameEntry = "Fulano"
    @State private var showingAlert = false
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .aspectRatio(1/1, contentMode: .fill)
                .ignoresSafeArea()
                .saturation(0.5)
                .blur(radius: 3)
                .opacity(0.2)
            VStack{
                Text("Bem vindo, \(nameEntry) ")
                    .font(.largeTitle)
                TextField("Fulano", text: $nameEntry).multilineTextAlignment(.center)
                Spacer()
                Image("logo").resizable().scaledToFill().frame(width: 100, height: 100).shadow(radius: 10)
                Image("truck").resizable().scaledToFill().frame(width: 100, height: 100)
                    .shadow(radius: 10)
                Spacer()
                Button("Entrar") {
                    showingAlert = true
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("ALERTA !"), message: Text("Você irá iniciar o desafio da aula agora"), dismissButton: .default(Text("Vamos lá!")))
                }
            }.frame(maxWidth: .infinity, maxHeight: 750)
        }
    }
}

struct desafio3_Previews: PreviewProvider {
    static var previews: some View {
        desafio3()
    }
}
//zstack background
//alert pro alerta
//text field para entrada
