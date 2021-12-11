//
//  LeagueView.swift
//  ArquiteturaMVVM
//
//  Created by aluno_istec on 16/11/2021.
//

import SwiftUI

struct LeagueView: View {
    @ObservedObject var viewModel = LeagueViewModel()
    
    var body: some View {
        ZStack{
            Image("background")
            VStack{
                Text(viewModel.data?.name ?? "")
                ScrollView{
                    ForEach(viewModel.data?.matches ?? [],id: \.id) { result in
                        if let score = result.score {
                            HStack{
                                VStack{
                                    
                                    Text("\(score.ft[0])")
                                    Text(result.team1)
                                }
                                Text("-")
                                VStack{
                                    Text("\(score.ft[1])")
                                    Text(result.team2)
                                }
                            }
                        }
                        
                        
                    }
                }
            }
        }
    }
}

struct LeagueView_Previews: PreviewProvider {
    static var previews: some View {
        LeagueView()
    }
}
