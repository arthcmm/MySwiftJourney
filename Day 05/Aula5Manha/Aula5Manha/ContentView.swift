//
//  ContentView.swift
//  Aula5Manha
//
//  Created by Student03 on 23/05/23.
//

import SwiftUI
import MapKit

struct Location : Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

struct ContentView: View {
    @State private var showingSheet = false
    @State var nowLoc = "Londres"
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.07, longitudeDelta: 0.07))
    
    var body: some View {
        let arrLoc = [
        Location(
            name: "Belo Horizonte",
            coordinate: CLLocationCoordinate2D(latitude: -19.924557, longitude: -43.991597),
            flag:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Bandeira-de-Belo-Horizonte.svg/240px-Bandeira-de-Belo-Horizonte.svg.png",
            description: "Belo Horizonte é a capital do estado de Minas Gerais, no sudeste do Brasil. Rodeada de montanhas, a cidade é conhecida pelo enorme Estádio Mineirão. Construído em 1965, o estádio alberga também o Museu Brasileiro do Futebol. Nas proximidades encontra-se a Lagoa da Pampulha e o Conjunto Arquitetónico da Pampulha, que inclui a Igreja de São Francisco de Assis, cujo teto é ondulado e que foi concebida pelo arquiteto modernista brasileiro Oscar Niemeyer."
        ),
        Location(
            name: "Mogi das Cruzes",
            coordinate: CLLocationCoordinate2D(latitude: -23.522673, longitude: -46.185951),
            flag:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Band_MCruzes.jpg/240px-Band_MCruzes.jpg",
            description: "Mogi das Cruzes é um município brasileiro do estado de São Paulo, localizado na Região Metropolitana de São Paulo, na Região do Alto Tietê, também conhecida como Zona Leste da Grande São Paulo, em conformidade com a lei estadual nº 1.139, de 16 de junho de 2011 e, consequentemente, com o Plano de Desenvolvimento Urbano Integrado da Região Metropolitana de São Paulo (PDUI). Sua população, conforme estimativas do IBGE de 2021, era de 455 587 habitantes."
        ),
        Location(
            name: "Xique-Xique",
            coordinate: CLLocationCoordinate2D(latitude: -10.823454, longitude: -42.725039),
            flag:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Xique-Xique_-_bandeira.jpg/240px-Xique-Xique_-_bandeira.jpg",
            description: "Xique-Xique é um município brasileiro do estado da Bahia, Região Nordeste do país. Está situado à margem direita do Rio São Francisco que abriga um porto de grande importância para economia da região."
        )
        ]
        VStack {
            Text("World map").font(.title).bold()
            Text("\(nowLoc)")
            Map(coordinateRegion: $mapRegion, annotationItems: arrLoc) { arrLoc in
                MapAnnotation(coordinate: arrLoc.coordinate) {
                    Circle().onTapGesture {
                        showingSheet.toggle()
                    }.sheet(isPresented: $showingSheet) {
                        Detalhes(loc: arrLoc )
                    }.frame(width: 20, height: 20)
                }
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(arrLoc) { location in
                        Button("\(location.name)") {
                            mapRegion.center = location.coordinate
                            nowLoc = location.name
                        }.buttonStyle(.borderedProminent).controlSize(.large)
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
