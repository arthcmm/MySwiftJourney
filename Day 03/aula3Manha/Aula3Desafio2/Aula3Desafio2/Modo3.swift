//
//  Modo3.swift
//  Aula3Desafio2
//
//  Created by Student03 on 19/05/23.
//

import SwiftUI

struct Modo3: View {
    @State private var showingSheet = false
    var body: some View {
        Button("Mostar Sheet") {
                    showingSheet.toggle()
                }
                .sheet(isPresented: $showingSheet) {
                    Modo1()
                }    }
}

struct Modo3_Previews: PreviewProvider {
    static var previews: some View {
        Modo3()
    }
}
