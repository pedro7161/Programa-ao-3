//
//  Weaviewmodel.swift
//  weatherapp
//
//  Created by Guest User on 24/11/2021.
//

import Foundation
class weatherviewmodel: ObservableObject {
    var City:String="Lisbon";
    var apikey:String="inserir api";
    @Published var data:Weathers?;
    init() {
        self.fetchapi();
    }
    func fetchapi(){
        guard let url = URL(string: "api.openweathermap.org/data/2.5/weather?q=\(City)&appid=\(apikey)") else {
            print("url invalido")
            return
        }
        URLSession.shared.dataTask(with: url){(data,_,_) in
            let wea = try! JSONDecoder().decode(Weathers.self, from: data!);
            print(wea);
            DispatchQueue.main.async {
                self.data=wea;
            }
        }.resume()
    }
    
}
//
//  weatherstruct.swift
//  weatherapp
//
//  Created by Guest User on 24/11/2021.
//

import Foundation

struct Weathers:Codable,Identifiable{
    let coord:[Coords];
    let weather:[Weather];
    let wind:[Wind];
    let clouds:[Cloud];
    let dt:Int;
    let sys:[Sys];
    let timezone:Int;
    let id=UUID();
    let name:String;
    let cod:Int;
}
struct Coords:Codable,Identifiable {
    let id=UUID();
    let lon:Float;
    let lat:Float;
    
}
struct Weather:Codable,Identifiable {
    var id:Int;
    var main:String;
    var deion:String;
    var icon:String;
    init(id:Int,main:String,deion:String,icon:String){
        self.id=id;
        self.main=main;
        self.deion=deion;
        self.icon=icon;
        self.base=nil;
    }
    let base:String?;
}
struct Main:Codable,Identifiable {
    let id=UUID();
    let temp:Double;
    let feels_like:Double;
    let temp_min:Double;
    let temp_max:Double;
    let  pressure:Int;
    let humidity:Int;
    let  visibility:Int;
}
struct Wind:Codable,Identifiable {
    let id=UUID();
    let speed:Double;
    let deg:Int;
}
struct Cloud:Codable,Identifiable{
    let id=UUID();
    let all:Int;
}
struct Sys:Codable,Identifiable {
    let type:Int;
    let id:Int;
    let country:String;
    let sunrise:Int;
    let sunset:Int
    
}


//weather view
import SwiftUI

struct WeatherView: View {
    @ObservedObject var viewModel = WeatherViewModel()
     var i = 0
    
     VStack{
                Text(viewModel.data?.name ?? "")
                ScrollView{
                    ForEach(viewModel.data?.coord ?? [],id: \.id) { result in
                        if let score = result.coords {
                            HStack{
                                VStack{
                                    
                                    Text("\(score.lon[i])")
                                    Text(result.team1)
                                }
                                Text("-")
                                VStack{
                                    Text("\(score.lat[i])")
                                    Text(result.team2)
                                }
                            }
                            ForEach(viewModel.data?.wind ?? [],id: \.id) { result2 in
                        if let score2 = result2.wind {
                            HStack{
                                VStack{
                                    
                                    Text("Wind speed: \(score2.speed[i])")
                                    Text(result2.team1)
                                }
                                
                            }
                            
                        }
                        
                        
                    }
                            i+=1
                        }
                        
                        
                    }
                        
                }
                
}

struct LeagueView_Previews: PreviewProvider {
    static var previews: some View {
        LeagueView()
    }
}
