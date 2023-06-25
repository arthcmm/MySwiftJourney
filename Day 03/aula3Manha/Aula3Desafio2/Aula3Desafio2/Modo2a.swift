//
//  Modo2a.swift
//  Aula3Desafio2
//
//  Created by Student03 on 19/05/23.
//

import SwiftUI

struct Modo2a: View {
    @State var entry: String
    var body: some View {
        Text("FAAAAAAALA \(entry)")
    }
}

struct Modo2a_Previews: PreviewProvider {
    static var previews: some View {
        Modo2a(entry: "")
    }
}
