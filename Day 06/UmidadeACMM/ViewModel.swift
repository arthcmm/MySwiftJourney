//
//  ViewModel.swift
//  Aula7Manha
//
//  Created by Student03 on 05/06/23.
//

import Foundation

struct Distancia: Codable{
    let _id: String
    let _rev: String?
    let distancia: Int?
}

class ViewModel : ObservableObject {
    @Published var dados : [Distancia] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/furia")
        else{
            
            return
        }
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do{
                let parsed = try JSONDecoder().decode([Distancia].self, from: data)
                DispatchQueue.main.async {
                    self?.dados = parsed
                }
            } catch{
                print(error)
            }
        }
        task.resume()
    }
}
