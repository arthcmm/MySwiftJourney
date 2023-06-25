//
//  Modo2.swift
//  Aula3Desafio2
//
//  Created by Student03 on 19/05/23.
//

import SwiftUI

struct Modo2: View {
    @State private var entry = ""
    var body: some View {
        VStack{
            TextField("Escreva seu nome", text: $entry)
            Text("Estamos percorrendo um caminho, \(entry) !")
            NavigationLink("Acessar tela", destination: Modo2a(entry: entry))
        }
    }
}

struct Modo2_Previews: PreviewProvider {
    static var previews: some View {
        Modo2()
    }
}
