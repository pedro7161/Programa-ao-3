//
//  LeagueViewModel.swift
//  ArquiteturaMVVM
//
//  Created by aluno_istec on 16/11/2021.
//

import Foundation

class LeagueViewModel : ObservableObject {
    
    //O @Published é wrapper de propriedade que permite notificar o observador de uma alteração nesta variável
    @Published var data : League?
    
    // Construtor da classe
    init() {
        self.fetchAPI()
    }
    
    func fetchAPI(){
        guard let url = URL(string: "https://raw.githubusercontent.com/openfootball/football.json/master/2020-21/pt.1.json") else { return }
        
               URLSession.shared.dataTask(with: url) { (data, _, _) in
                   let results = try! JSONDecoder().decode(League.self, from: data!)
                   print(results)
                   
                   DispatchQueue.main.async {
                        self.data = results
                   }
               }
               .resume()
    }
    
    
}
