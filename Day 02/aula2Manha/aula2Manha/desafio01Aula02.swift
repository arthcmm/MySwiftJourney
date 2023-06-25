//
//  desafio01Aula02.swift
//  aula1Manha
//
//  Created by Student03 on 18/05/23.
//

import SwiftUI

func meuFormatter() -> NumberFormatter {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.maximumFractionDigits = 2
    return formatter
}

struct desafio01Aula02: View {
    @State private var peso: Float = 0.00
    @State private var tam: Float = 0.00
    @State private var imc: Float = 0.00
    @State private var bgColor = "white"
    @State private var result = "Normal"

    var body: some View {
        ZStack{
            VStack{
                Text("Calculadora de IMC").font(.largeTitle)
                TextField("Peso", value: $peso, formatter: meuFormatter())
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                TextField("Altura", value: $tam, formatter: meuFormatter()).multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                Button("Calcular"){
                    imc = (peso)/(pow(tam,2))
                    switch(imc){
                    case 0...18,5:
                        result = "Baixo peso"
                        bgColor = "baixoPeso"
                        break
                    case 18,6..<25:
                        result = "Normal"
                        bgColor = "normal"
                        break
                    case 25..<30:
                        result = "Sobrepeso"
                        bgColor = "sobrepeso"
                        break
                    case 30...:
                        result = "Obesidade"
                        bgColor = "obesidade"
                        break
                    default:
                        break
                    }
                }.buttonStyle(.borderedProminent).controlSize(.large)
                Spacer()
                Text("\(result)").foregroundColor(.white).font(.title).bold().animation(.default, value: result)
                Spacer()
                Image("tabelaIMC").resizable().scaledToFit().shadow(radius: 5)
            }.background(Color("\(bgColor)")).animation(.default, value: result)
        }
    }
}

struct desafio01Aula02_Previews: PreviewProvider {
    static var previews: some View {
        desafio01Aula02()
    }
}
