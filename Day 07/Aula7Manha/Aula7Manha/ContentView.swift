//
//  ContentView.swift
//  Aula7Manha
//
//  Created by Student03 on 25/05/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                AsyncImage(url: URL(string: "https://img.ibxk.com.br/2021/04/19/19165615261383.jpg?ims=704x"), content: {image in image.resizable()}
                           ,placeholder: {ProgressView()}).ignoresSafeArea()
                    .aspectRatio( contentMode: .fill)
                    .frame(width: 250, height: 250)
                ScrollView{
                    ForEach(viewModel.chars){
                        p in NavigationLink(destination: CharView(p: p)){
                            HStack{
                                AsyncImage(url: URL(string:p.image!), content: {image in image.resizable().scaledToFill()}
                                    ,placeholder: {ProgressView()}).ignoresSafeArea()
                                    .aspectRatio( contentMode: .fill)
                                    .background(.gray)
                                    .clipShape(Circle())
                                    .padding(10)
                                    .frame(width: 90, height: 90)
                                Text(p.name!)
                                Spacer()
                            }
                        }
                    }
                }
            }
            .foregroundColor(.white)
            .ignoresSafeArea()
            .background(Color("gri"))
        }.onAppear(){
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
