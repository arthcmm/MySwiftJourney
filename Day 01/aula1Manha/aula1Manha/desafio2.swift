//
//  desafio2.swift
//  aula1Manha
//
//  Created by Student03 on 17/05/23.
//

import SwiftUI

struct desafio2: View {
    var body: some View {
        VStack{
            Image("bg").resizable().scaledToFit().padding(.bottom)
            Spacer()
            Image("bg").resizable().scaledToFit().clipShape(Circle()).overlay(
                Text("HackaTruck").foregroundColor(.blue).bold().font(.system(size: 36)).padding(.bottom, 150)
            )
            Spacer()
            HStack {
                Text("Maker").foregroundColor(.yellow)
                Text("Space").foregroundColor(.red)
            }.padding([.bottom, .horizontal]).font(.system(size: 29)).padding().background(Color.black)
        }
    }
    
}

struct desafio2_Previews: PreviewProvider {
    static var previews: some View {
        desafio2()
    }
}
