//
//  SquareView.swift
//  aula3Manha
//
//  Created by Student03 on 19/05/23.
//

import SwiftUI

struct SquareView: View {
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            Rectangle().foregroundColor(.blue).frame(width: 250, height: 250).overlay(
                Text("Hello, Hackatruck")
            )
        }
    }
}

struct SquareView_Previews: PreviewProvider {
    static var previews: some View {
        SquareView()
    }
}
