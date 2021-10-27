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
	
