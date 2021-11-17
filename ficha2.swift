//ex1	
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing:0){
            Rectangle().frame(height:100,alignment: .top)
                .foregroundColor(.green)
            Spacer()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//ex2

  import SwiftUI

    struct ContentView: View {
        var body: some View {
            
            HStack(spacing:0){
                Rectangle().frame(width: 100/,alignment: .center)
                    .foregroundColor(.green)
                    Spacer()
                
            }
            
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
//ex3
    import SwiftUI

    struct ContentView: View {
        var body: some View {
            
            VStack(spacing:0){
                
                HStack(spacing:0){
                    Rectangle().frame(width: 50,height: 100,alignment: .center)
                    .foregroundColor(.green)
                  
                    Rectangle().frame(width: 50,height: 100,alignment: .center)
                    .foregroundColor(.blue)
                    Rectangle().frame(width: 50,height: 100,alignment: .center)
                    .foregroundColor(.purple)
                    
                 Spacer()
                }
         Spacer()
            }
            
            
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


//ex4
    import SwiftUI

    struct ContentView: View {
        var body: some View {
            
            HStack(spacing:0){
                
                VStack(spacing:0){
                    Rectangle().frame(width: 50,height: 100,alignment: .center)
                    .foregroundColor(.green)
                    Rectangle().frame(width: 50,height: 100,alignment: .center)
                
                    .foregroundColor(.blue)
                    Rectangle().frame(width: 50,height: 100,alignment: .center)
                    .foregroundColor(.purple)
                    
                 Spacer()
                }
         Spacer()
            }
            
            
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

//ex5	


import SwiftUI

 struct ContentView: View {
     var body: some View {
         
         VStack(spacing:0){
    
             HStack(spacing:0){
                                Rectangle().frame(width: 50,height: 100,alignment: .center)
                 .foregroundColor(.green)
                 Rectangle().frame(width: 50,height: 100,alignment: .center)
             
                 .foregroundColor(.blue)
                 Rectangle().frame(width: 50,height: 100,alignment: .center)
                 .foregroundColor(.purple)
                 
             
             }
         }
         
         
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }

//////////////////////////
import SwiftUI

 struct ContentView: View {
     var body: some View {
         
         HStack(spacing:0){
    
             VStack(spacing:0){
                                Rectangle().frame(width: 50,height: 100,alignment: .center)
                 .foregroundColor(.green)
                 Rectangle().frame(width: 50,height: 100,alignment: .center)
             
                 .foregroundColor(.blue)
                 Rectangle().frame(width: 50,height: 100,alignment: .center)
                 .foregroundColor(.purple)
                 
             
             }
         }
         
         
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }
////////////////////////
	import SwiftUI

 struct ContentView: View {
     var body: some View {
         
         VStack(spacing:0){
    Spacer()
             HStack(spacing:0){
                                Rectangle().frame(width: 50,height: 100,alignment: .center)
                 .foregroundColor(.green)
                 Rectangle().frame(width: 50,height: 100,alignment: .center)
             
                 .foregroundColor(.blue)
                 Rectangle().frame(width: 50,height: 100,alignment: .center)
                 .foregroundColor(.purple)
                 
            Spacer()
             }
         }
         
         
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }
//////////////////////////////////////

import SwiftUI

 struct ContentView: View {
     var body: some View {
         
         HStack(spacing:0){
    Spacer()
             VStack(spacing:0){
            Spacer()
                Rectangle().frame(width: 50,height: 100,alignment: .center)
                 .foregroundColor(.green)
                 Rectangle().frame(width: 50,height: 100,alignment: .center)
             
                 .foregroundColor(.blue)
                 Rectangle().frame(width: 50,height: 100,alignment: .center)
                 .foregroundColor(.purple)
                 
            
             }
         }
         
         
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }

//ex6

import SwiftUI

 struct ContentView: View {
     var body: some View {
         
         VStack(spacing:0){
    
            HStack(spacing:UIScreen.main.bounds.width*0.2){
            
                Rectangle().frame(width: 50,height: 100,alignment: .center)
                 .foregroundColor(.green)
                 Rectangle().frame(width: 50,height: 100,alignment: .center)
             
                 .foregroundColor(.blue)
                 Rectangle().frame(width: 50,height: 100,alignment: .center)
                 .foregroundColor(.purple)
         }
         }
         
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }






///////////////////

import SwiftUI

 struct ContentView: View {
     var body: some View {
         
         HStack(spacing:0){
    
             VStack(spacing:50){
            
                Rectangle().frame(width: 50,height: 100,alignment: .center)
                 .foregroundColor(.green)
                 Rectangle().frame(width: 50,height: 100,alignment: .center)
             
                 .foregroundColor(.blue)
                 Rectangle().frame(width: 50,height: 100,alignment: .center)
                 .foregroundColor(.purple)
                
             }
            Spacer()
            VStack(spacing:50){
           
               Rectangle().frame(width: 50,height: 100,alignment: .center)
                .foregroundColor(.green)
                Rectangle().frame(width: 50,height: 100,alignment: .center)
            
                .foregroundColor(.blue)
                Rectangle().frame(width: 50,height: 100,alignment: .center)
                .foregroundColor(.purple)
               
            }
            Spacer()
            VStack(spacing:50){
           
               Rectangle().frame(width: 50,height: 100,alignment: .center)
                .foregroundColor(.green)
                Rectangle().frame(width: 50,height: 100,alignment: .center)
            
                .foregroundColor(.blue)
                Rectangle().frame(width: 50,height: 100,alignment: .center)
                .foregroundColor(.purple)
               
            }
         }
         
         
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }

//ex7
	
import SwiftUI

 struct ContentView: View {
     var body: some View {
         
     
    
            VStack(spacing:0){
            
                Rectangle().frame(height:UIScreen.main.bounds.height,alignment: .center)
                 .foregroundColor(.green)
          
                
         }
         
         
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }	

//////////////////////////
import SwiftUI

 struct ContentView: View {
     var body: some View {
         
     
    
            VStack(spacing:0){
            
                Rectangle().frame(height:UIScreen.main.bounds.height,alignment: .center)
                 .foregroundColor(.green)
                 Rectangle().frame(height:UIScreen.main.bounds.height,alignment: .center)
             
                 .foregroundColor(.blue)
                
         }
         
         
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }
//////////////////////
import SwiftUI

 struct ContentView: View {
     var body: some View {
         
         VStack(spacing:0){
    
            HStack(spacing:0){
            
                Rectangle().frame(height:UIScreen.main.bounds.height,alignment: .center)
                 .foregroundColor(.green)
                 Rectangle().frame(height:UIScreen.main.bounds.height,alignment: .center)
             
                 .foregroundColor(.blue)
                 Rectangle().frame(height:UIScreen.main.bounds.height,alignment: .center)
                 .foregroundColor(.purple)
         }
         }
         
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }

//ex8

import SwiftUI

 struct ContentView: View {
     var body: some View {
         
     
    
            VStack(spacing:0){
            
                Rectangle().frame(height:10,alignment: .center)
                 .foregroundColor(.green)
          Spacer()
                VStack(spacing:0){
                    Rectangle().frame(width:100,height:100,alignment: .center)
                        .foregroundColor(.orange)
                    Spacer()
                }
                
                VStack(spacing:0){
                    Rectangle().frame(width:150,height:20,alignment: .center)
                     .foregroundColor(.orange)
                    Spacer()
                
                }
               
                HStack(spacing: 0) {
                    Rectangle().frame(height:50,alignment: .center)
                     .foregroundColor(.purple)
                    Rectangle().frame(height:50,alignment: .center)
                     .foregroundColor(.blue)
                    

                }
        
                VStack(spacing:0){
                    Rectangle().frame(height:10,alignment: .center)
                     .foregroundColor(.green)
                    Spacer()
                }
                
                HStack{
                    
                    Rectangle().frame(width:80,height:80,alignment: .center)
                        .foregroundColor(.orange)
                    Rectangle().frame(width:80,height:80,alignment: .center)
                        .foregroundColor(.orange)
                    Rectangle().frame(width:80,height:80,alignment: .center)
                        .foregroundColor(.orange)
                
                }
                Spacer()
                HStack{
                    Rectangle().frame(width:80,height:80,alignment: .center)
                        .foregroundColor(.orange)
                    Rectangle().frame(width:80,height:80,alignment: .center)
                        .foregroundColor(.orange)
                    Rectangle().frame(width:80,height:80,alignment: .center)
                        .foregroundColor(.orange)
                
                }
        
                VStack(spacing:0){
                    Spacer()
                    Rectangle().frame(height:30,alignment: .center)
                     .foregroundColor(.blue)
                }
            }
       
         
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }


