func printar(message:String)
{
    print(message)
}


var str="Hello, playground"
//var dicionario=["primeiro":1,"Segundo":2]
var array=[1,2,4,4]
//var matriz=[1,2,3,4][4,3,2,1][1,2,3,4]
	var cond=true
var resultado = cond ? "Verdade":"Falso"


printar(message: str)

for i in stride(from: array.count-1, to: -1, by: -1){
  printar(message: String(i))
  
}

let numberoflegs = ["aranha":8,"formiga":6]

for (key,value) in numberoflegs{
    print("animal: \(key) Legs: \(value)")
}
	
bLink Mac OS em VMware: bit.ly/catarinadoistec



/**************************************************EX1*******************************************************************/

let array = ["Maria","Pedro","Paulo"]

var reversed : [String] = []

// o stride permite correr o array ao contrário entre outras opções por exemplo uma interação de 3 em 3 
for i in stride(from: array.count - 1, to: -1, by: -1) {
        
    //.append permite adicionar ao final do array
    reversed.append(array[i])
    
}

print(reversed)

/**************************************************EX2*******************************************************************/

let numbers = ["13","1345","114","21452","324","31242","32"]

// Uma váriavel optional é uma variável que pode ser nula
var maior = Int(numbers[0]) ?? 0

for num in numbers {
    
    if (Int(num) ?? 0 > maior) {
        maior = Int(num) ?? 0
    }
    
}
print(maior)

/**************************************************EX3*******************************************************************/

let escolhido = 20

if (escolhido % 2 == 0){
    print("Par")
}else{
    print("Impar")
}

/**************************************************EX4*******************************************************************/

for i in 1...100{
    if(i % 2 == 0) {
        print(i)
    }
}

/**************************************************EX5*******************************************************************/

for i in 1...100{
    if(i % 2 != 0) {
        print(i)
    }
}

/**************************************************EX6*******************************************************************/

let words = ["Hello","Worldghfjgk","numgja","lmoldura"]
var tamanho = 0
for word in words {
    if word.count > tamanho {
        tamanho = word.count
    }
}
print(" A maior palavra têm \(tamanho) caracteres")

let padding = 8
var asteriscos = ""

for i in 0...tamanho+padding {
    asteriscos+="*"
}

asteriscos += "*"

print(asteriscos)

for word in words {
    
    let size = ((tamanho+padding) - (2 + word.count))/2
    var temp = "*"
    for _ in 0...size{
        temp+=" "
    }
    temp += word
    for _ in 0...size{
        temp+=" "
    }
    if(word.count % 2 == 0){
        temp += " *"
    }else{
        temp += "*"
    }
  
    print(temp)
}

print(asteriscos)


/**************************************************EX7*******************************************************************/



func bubbleSort(vector: [Int]) -> [Int]{
    var arr = vector
    let n = arr.count
    for i in 0..<n{
        for j in 0..<n-i-1 {
            if (arr[j] > arr[j+1]) {
                let temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
            }
        }
    }
    return arr
}
 
var arr = [64, 34, 25, 12, 22, 11, 90]
  
print(bubbleSort(vector: arr))
 

/*********************************************** SWIFTUI **************************************************************/


  VStack{
    
            Text("Hello, world!")
            Text("Hello, world!")
                .frame(width: 100, height: 200, alignment: .top)
                .background(Color.blue)
              
        }
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center )
        
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
////////////////////////////////////////////////////////////////////////////////////////////////
//
//  ContentView.swift
//  Aula1
//
//  Created by developer on 27/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var tapCount = 0
    @State private var username = ""
    
    var body: some View {
        
        NavigationView{
            Form{
                
                Text("Hello, world!")       
                Button("Cique aqui: \(tapCount)")
                {
                    self.tapCount += 1
                }
                TextField("Username", text: $username)
                Text("Username inserido foi: \(username)")
                
            }
            .navigationBarTitle("Página 1")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


import SwiftUI

struct ContentView: View {
    
    @State var tapCount = 0
    @State private var username = ""
    
    let students = ["Harry","Hermione","Ron"]
    @State var selectedStudent = 0
    
    var body: some View {
        
        NavigationView{
            Form{
                
                Text("Hello, world!")
                Text("Cliques: \(tapCount)")
                Button("Cique aqui")
                {
                    self.tapCount += 1
                }
                TextField("Username", text: $username)
                Text("Username inserido foi: \(username)")
                
                Picker("Select one student...", selection: $selectedStudent){
                    ForEach(0..<students.count){
                        Text(students[$0])
                    }
                }
                
                Text("Selected Student is \(selectedStudent)")
                
            }
        }
        .navigationBarTitle("Página 1")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//os componentes do v-stack vao ficar organizados em coluna
//h-stack organiza numa horizontal
//z-stack layers    


//navegaçao
//MVVM Module View ViewModal

//module-modelo de dados do ecra
//view-parte grafica do ecra
//viewmodal parte comportamental
//

//como estruturar para api

struct league: Codable,Identifiable{
    let id=UUID()
    let name:String
    let matchs:[match]
}
struct match: Codable,Identifiable {
let round: String
let date: String
let team1:String
let team2:String
let score:Score?  //caso nao exista score na api
}
struct Score: Codable,Identifiable{
let id=UUID()
    let ft:String
}
//viewmodel
//
class leagueviewmodel:ObservableObject {
 @published var leaguedata : league?
 
 init() {
     self.fetchAPI()
 }
  func fetchAPI(){
      
        guard let url = URL(string: "https://training.xcelvations.com/temp/books.json") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let leag = try! JSONDecoder().decode(league.self, from: data!)
            print(leag)
            DispatchQueue.main.async {
                completion(leag)
            }
        }.resume()

  }

    
}


//view
//é preciso ma variavel que va buscar o viewmodel
@ObservableObject var observedviewmodel=leagueviewmodel()
//para ir buscaar a api
Text(observedviewmodel.leaguedata?.name?? "NA") // os ?? servem para dar outro valor quando nao existe um valor
//para passar pelos arrays da api
ForEach(observedviewmodel.leaguedata?.matchs ?? [],id:\.id{ result in
    if let score=result.score{
        Text("\(result.team1) \(result.ft[0]) \(result.ft[1])\(result.team2)")
    }
})


struct temperaturas{
    let coords:[coord]
    let weather:[weathers]
    let base:String
    let main:[mains]
    let visibility:Int
    let wind:[winds]
    let clouds:[cloud]
    let dt:Int
    let sys:[Sys]
    let timezone:Int
    let id:Int
    let name:string
    let cod:Int
}



struct coord: Codable,Identifiable{
    let long:Float
    let lat:Float
    
}
struct weathers: Codable,Identifiable{
    let id:UUID()
    let main:String
    let description:String
    let icon:String
}


struct mains: Codable,Identifiable{
    let temp:Float
    let feels_like:Float
    let temp_min:Float
    let temp_max:Float
    let pressure:Int
    let humidity:Int
}
struct winds : Codable,Identifiable{
    let speed:Float
    let deg:Int
}
struct cloud : Codable,Identifiable{
    let all:Int
}
struct Sys: Codable,Identifiable{
 let type:Int
 let id : UUID()
 let message:Float
 let country: String
 let sunrise:Int
 let sunset:Int
}