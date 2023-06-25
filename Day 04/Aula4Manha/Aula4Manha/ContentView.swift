//
//  ContentView.swift
//  Aula4Manha
//
//  Created by Student03 on 22/05/23.
//

import SwiftUI

struct Song : Identifiable{
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

struct ContentView: View {
    var arrayMusicas = [
        Song(id: 1, name: "Wham Bam Shang-A-Lang", artist: "Silver", capa: "https://i.scdn.co/image/ab67616d0000b27351d98ff76da5ca1f82c8cbc8"),
        Song(id: 2, name: "LosT", artist: "Bring Me The Horizon", capa: "https://i.scdn.co/image/ab67616d0000b273068b7b754072969555a095f5"),
        Song(id: 3, name: "SNAKE EYES", artist: "Aries", capa: "https://i1.sndcdn.com/artworks-BnfipywjD8HVOvhQ-kcZLxA-t500x500.jpg"),
        Song(id: 4, name: "Banana Cigana", artist: "Radio Exodus", capa: "https://i.scdn.co/image/ab67616d00001e023c06cb61a93be57b7813bb93"),
        Song(id: 5, name: "bandaids", artist: "keshi", capa: "https://i.scdn.co/image/ab67616d0000b2737941a79c3108cedb1667b68d"),
        Song(id: 6, name: "Ela Disse Adeus", artist: "Os Paralamas Do Sucesso", capa: "https://i.scdn.co/image/ab67616d0000b27322cb2eea5791070582784afe"),
        Song(id: 7, name: "Razões e Emoções", artist: "NX Zero", capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/c/8/e/4/131231466000034.jpg"),
        Song(id: 8, name: "I'm bad too", artist: "Hwa Sa, DPR LIVE", capa: "https://i.scdn.co/image/ab67616d0000b273a84d6d77bb01c3bd737c47d7"),
        Song(id: 9, name: "Polarize", artist: "Twnety One Pilots", capa: "https://i.scdn.co/image/ab67616d0000b273de03bfc2991fd5bcfde65ba3"),
        Song(id: 10, name: "lie lie lie", artist: "MICO", capa: "https://i.scdn.co/image/ab67616d00001e02efd52f503f154f527fd5b8de")
        
    ]
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .center).edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack{
                        AsyncImage(url: URL(string:"https://scontent.fplu8-1.fna.fbcdn.net/v/t39.30808-6/298538957_489455429848754_8338744740369789501_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=e3f864&_nc_ohc=58X5O9wTbAkAX-gPwSL&_nc_ht=scontent.fplu8-1.fna&oh=00_AfB7sGF7JXejJsgiTvqQkjR0EewxlAumjCxPOWcc3qezKQ&oe=647046D7")) { phase in
                            switch phase {
                            case .empty:
                                ProgressView()
                            case .success(let image):
                                image.resizable()
                                    .clipShape(Rectangle())
                                    .frame(maxWidth: 200, maxHeight: 200)
                                    .shadow(radius: 5)
                            case .failure:
                                Image(systemName: "photo")
                            @unknown default:
                                EmptyView()
                            }
                        }
                        HStack{
                            Text("HackaFM").font(.title)
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                            Spacer()
                        }
                        HStack{
                            AsyncImage(url: URL(string:"https://scontent.fplu8-1.fna.fbcdn.net/v/t39.30808-6/298538957_489455429848754_8338744740369789501_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=e3f864&_nc_ohc=58X5O9wTbAkAX-gPwSL&_nc_ht=scontent.fplu8-1.fna&oh=00_AfB7sGF7JXejJsgiTvqQkjR0EewxlAumjCxPOWcc3qezKQ&oe=647046D7")) { phase in
                                switch phase {
                                case .empty:
                                    ProgressView()
                                case .success(let image):
                                    image.resizable()
                                        .clipShape(Rectangle())
                                        .frame(maxWidth: 30, maxHeight: 30)
                                        .padding([.leading, .bottom])
                                case .failure:
                                    Image(systemName: "photo")
                                @unknown default:
                                    EmptyView()
                                }
                            }
                            Text("HackaSong")
                                .bold()
                                .foregroundColor(.white).padding(.leading, 2.0)
                                .padding(.bottom)
                            Spacer()
                        }
                        ForEach(arrayMusicas) { Musica in
                            HStack{
                                NavigationLink(destination: TelaReproducao(song: Musica)){
                                    AsyncImage(url: URL(string:"\(Musica.capa)")) { phase in
                                        switch phase {
                                        case .empty:
                                            ProgressView()
                                        case .success(let image):
                                            image.resizable()
                                                .clipShape(Rectangle())
                                                .frame(maxWidth: 50, maxHeight: 50)
                                                .padding(.leading)
                                        case .failure:
                                            Image(systemName: "photo")
                                        @unknown default:
                                            
                                            EmptyView()
                                        }
                                    }}
                                VStack{
                                    NavigationLink(destination: TelaReproducao(song: Musica)){
                                        Text(Musica.name).foregroundColor(.white).padding(.bottom, -3.0).frame(maxWidth: .infinity, alignment: .leading).overlay(
                                            Text("...").foregroundColor(.white)
                                                .padding(.trailing)
                                                .frame(maxWidth: .infinity, alignment: .trailing).font(.system(size: 30))
                                        )
                                    }
                                    NavigationLink(destination: TelaReproducao(song: Musica)){
                                        Text(Musica.artist).foregroundColor(.white)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                }
                            }}
                        Text("Sugeridos").font(.title).foregroundColor(.white).frame(maxWidth: .infinity, alignment: .leading).padding()
                        
                        ScrollView(.horizontal) {
                            HStack{
                                VStack{
                                    AsyncImage(url: URL(string:"https://www.eusemfronteiras.com.br/wp-content/uploads/2020/09/shutterstock_1890767740.jpg")) { phase in
                                        switch phase {
                                        case .empty:
                                            ProgressView()
                                        case .success(let image):
                                            image.resizable()
                                                .clipShape(Rectangle())
                                                .frame(maxWidth: 200, maxHeight: 200)
                                                .padding(.leading)
                                        case .failure:
                                            Image(systemName: "photo")
                                        @unknown default:
                                            
                                            EmptyView()
                                        }
                                    }
                                    Text("1 - One").foregroundColor(.white).bold()
                                }
                                
                                VStack{
                                    AsyncImage(url: URL(string:"https://images.wemystic.com.br/repo/numero-2.jpg")) { phase in
                                        switch phase {
                                        case .empty:
                                            ProgressView()
                                        case .success(let image):
                                            image.resizable()
                                                .clipShape(Rectangle())
                                                .frame(maxWidth: 200, maxHeight: 200)
                                                .padding(.leading)
                                        case .failure:
                                            Image(systemName: "photo")
                                        @unknown default:
                                            
                                            EmptyView()
                                        }
                                    }
                                    Text("2 - Two").foregroundColor(.white).bold()
                                }
                                
                                VStack{
                                    AsyncImage(url: URL(string:"https://img.freepik.com/vetores-premium/cacto-de-desenho-animado-numero-3-com-numeros-de-criancas-de-fonte-de-flores-figura-tres_172107-2355.jpg?w=2000")) { phase in
                                        switch phase {
                                        case .empty:
                                            ProgressView()
                                        case .success(let image):
                                            image.resizable()
                                                .clipShape(Rectangle())
                                                .frame(maxWidth: 200, maxHeight: 200)
                                                .padding(.leading)
                                        case .failure:
                                            Image(systemName: "photo")
                                        @unknown default:
                                            
                                            EmptyView()
                                        }
                                    }
                                    Text("3 - Three").foregroundColor(.white).bold()
                                    
                                }
                                
                                
                            } //HStack fim
                            
                            
                        }
                    }
                    
                }
            }
            
        }.accentColor(.white)}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}



//NavigationLink(destination: TelaReproducao()){}
