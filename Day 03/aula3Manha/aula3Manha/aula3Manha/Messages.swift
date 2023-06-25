//
//  Messages.swift
//  aula3Manha
//
//  Created by Student03 on 19/05/23.
//

import SwiftUI

struct Messages: View {
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            Text("Hello, World!")
        }
    }
}

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages()
    }
}
