import UIKit

let nomes=["maria","pedro","joao","fabio","lucas","andre"]
var nomesinve:[String]=[]
for i in stride(from: nomes.count-1, to: -1, by: -1) {
 
        
    nomesinve.append(nomes[i])
    
}
print("Exer1 : \(nomesinve)")

//exer2
var numeros=["10","1000","10000","18000","123"]
var maior = Int(numeros[0]) ?? 0
//uma variavel optio(nal que pode ser nula
for k in numeros {
if (Int(k) ?? 0 > maior)
maior=Int(k) ?? 0

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

//exer4.2
print("Ex4.2")
for n1 in 0...100{

if(n1%2==0){
    print(n1)
}
    
}

//exer5
let words = ["Hello","World","num","moldura"]
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
        te  mp += "*"
    }
  
    print(temp)
}

print(asteriscos)

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










