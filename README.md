# Programa-ao-3

import UIKit

let nomes=["maria","pedro","joao","fabio","lucas","andre"]
var nomesinve:[String]=[]
for i in stride(from: nomes.count-1, to: -1, by: -1) {
 
        
    nomesinve.append(nomes[i])
    
}
print("Exer1 : \(nomesinve)")

let numeros=["10","1000","10000","18000","123"]
var maior:Int
maior=1
for k in 0...numeros.count{
            
    
}
print("Exer2 : \(maior)")

//exer 3
var numeross=2

if (numeross%2==0){
    print("o numero \(numeross) é par")
}
else if(numeross%2==1){
    print("o numero \(numeross) é impar")
}else{
    print("nao é um numero ou nao é um inteiro")
}

//exer4.1
for n1 in 0...100{

if(n1%2==1){
    print(n1)
}
    
}

//exer4.2
for n1 in 0...100{

if(n1%2==0){
    print(n1)
}
    
}
