//
//  PhotoView.swift
//  aula3Manha
//
//  Created by Student03 on 19/05/23.
//

import SwiftUI
private var images = [
    "hare.fill",
    "tortoise.fill",
    "pawprint.fill",
    "ant.fill",
    "ladybug.fill"
]

struct PhotoView: View {
    var body: some View {
        ZStack{
            Color.purple.ignoresSafeArea()
            ScrollView{
                    VStack{
                        ForEach(images, id: \.self){
                            index in
                            Image(systemName: "\(index)").font(.system(size: 150)).padding().foregroundColor(.yellow)
                        }
                    }
                }
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
