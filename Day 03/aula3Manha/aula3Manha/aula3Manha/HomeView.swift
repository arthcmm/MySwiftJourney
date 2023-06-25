//
//  HomeView.swift
//  aula3Manha
//
//  Created by Student03 on 19/05/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            List(1...50, id: \.self){
                Text("Item \($0)")
            }.scrollContentBackground(.hidden)
        }.background(.orange)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
