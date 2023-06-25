//
//  CharView.swift
//  Aula7Manha
//
//  Created by Student03 on 05/06/23.
//

import SwiftUI

struct CharView: View {
    var p: Distancia
    var body: some View {
        ZStack{
            VStack{
                Text(p._id).foregroundColor(.black).bold()
                Text(p._rev!).foregroundColor(.black).bold()
                Spacer()
            }.padding(.top, 100).ignoresSafeArea()
             
        }
        
    }
}
