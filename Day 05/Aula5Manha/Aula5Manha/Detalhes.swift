//
//  Detalhes.swift
//  Aula5Manha
//
//  Created by Student03 on 23/05/23.
//

import SwiftUI
import MapKit

struct Detalhes: View {
    var loc: Location
    var body: some View {
        VStack{
            Text(loc.name).font(.title).bold().padding(.top)
            AsyncImage(url: URL(string:"\(loc.flag)")) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image.resizable()
                        .clipShape(Rectangle())
                        .frame(maxWidth: 80, maxHeight: 50).shadow(radius: 10)
                case .failure:
                    Image(systemName: "photo")
                @unknown default:
                    EmptyView()
                }
            }
            Text(loc.description).padding()
            Spacer()
        }
    }
}

struct Detalhes_Previews: PreviewProvider {
    static var previews: some View {
        Detalhes(loc: Location(name: "Placeholder", coordinate: CLLocationCoordinate2D(latitude: -19.924557, longitude: -43.991597), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Bandeira-de-Belo-Horizonte.svg/240px-Bandeira-de-Belo-Horizonte.svg.png", description: "Placeholder"))
    }
}
