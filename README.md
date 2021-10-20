import UIKit

let nomes=["maria","pedro","joao","fabio","lucas","andre"]
var nomesinve:[String]=[]
for i in stride(from: nomes.count-1, to: -1, by: -1) {
 
        
    nomesinve.append(nomes[i])
    
}
print("Exer1 : \(nomesinve)")
//exer2
var numeros=["10","1000","10000","18000","123"]
let arrayInt = numeros.compactMap { Int($0) }
var maior:String



for k in 0...numeros.count-1{
    Int(numeros).sort()
    maior=numeros[k]
}
print("Exer2 :\(maior)")

//exer 3
print("Ex3")
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
print("Ex4,1")
for n1 in 0...100{

if(n1%2==1){
    print(n1)
}
    
}

//exer4.2
print("Ex4.2")
for n1 in 0...100{

if(n1%2==0){
    print(n1)
}
    
}

//exer5
func imprime(moldura:String){
    
    print("*\(moldura) *")
}
print("Ex5")
var sequen = ["Hello","World","numa","moldura"]
print("***********")
for j in 0...sequen.count-1{
    imprime(moldura: sequen[j])
}
print("***********")

//ex6
print("ex6")
var ar1=[1,4,6]
var ar2=[2,3,5]
for j in 0...ar2.count-1 {
    ar1.append(ar2[j])
}
for i in 0...ar1.count-1
{
    ar1.sort()
   
}
print(ar1)












import UIKit

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
	
