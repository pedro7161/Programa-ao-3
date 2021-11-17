//pag1
//  ContentView.swift
//  nav
//
//  Created by Aluno_Istec on 10/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State var email = ""
    @State var pass = ""
    let lightpurple = Color(red: 162, green: 75, blue: 209, opacity: 1)
    var body: some View {
   
        NavigationView{
            VStack(spacing:20){
             
                Text("Sign in").font(.largeTitle)
               
                HStack(){
                    
                Image(systemName: "envelope.open")
                    TextField("Email",text: $email).frame(width:UIScreen.main.bounds.width*0.5,height: UIScreen.main.bounds.height*0.06)
                    
                }.background(Color.white).cornerRadius(10).shadow(color: .black,radius: 10)
                
                HStack{
                    
                    Image(systemName: "lock")
                    TextField("password",text: $pass).frame(width:UIScreen.main.bounds.width*0.5,height: UIScreen.main.bounds.height*0.06)
                    
                }.background(Color.white).cornerRadius(10).shadow(color: .black,radius: 10)
                
                HStack(spacing:UIScreen.main.bounds.width-UIScreen.main.bounds.width*0.7) {
                 
                
                    Image(systemName: "newspaper")
                    NavigationLink(
                        destination: forgot_pass(),
                        label: {
                            Text("Forgot password?")
                            
                        })
                    
                }.font(.system(size: 10))
                NavigationLink(
                    destination: registerview(),
                    label: {
                        
                        Text("Login").frame(width: UIScreen.main.bounds.width*0.6, height:UIScreen.main.bounds.height*0.06, alignment: .center).background(LinearGradient(gradient: Gradient(colors:[.white,.purple,.purple,.purple,.purple]), startPoint: .leading, endPoint: .trailing)).cornerRadius(10)
                        
                    })
                HStack{
                Text("Don't have acount?")
                NavigationLink(
                    destination: registerview(),
                    label: {
                        Text("Create")
                        
                    })
                }.font(.system(size: 10))
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
//pag2
//  forgot-pass.swift
//  nav
//
//  Created by Aluno_Istec on 10/11/2021.
//

import SwiftUI

struct forgot_pass: View {
    @State var email = ""
    
    var body: some View {
       
        VStack(spacing:30){
            Spacer()
            Text("Forgot Password?").font(.largeTitle)
            HStack(){
                
            Image(systemName: "envelope.open")
                TextField("Email",text: $email).frame(width:UIScreen.main.bounds.width*0.5,height: UIScreen.main.bounds.height*0.06)
                
            }.background(Color.white).cornerRadius(10).shadow(color: .black,radius: 10)
            NavigationLink(
                destination: registerview(),
                label: {
                    Text("Send Reset Link").frame(width: UIScreen.main.bounds.width*0.6, height:UIScreen.main.bounds.height*0.06, alignment: .center).background(LinearGradient(gradient: Gradient(colors:[.white,.purple,.purple,.purple,.purple]), startPoint: .leading, endPoint: .trailing)).cornerRadius(10)
                    
                })
            HStack{
            Text("Back to")
            NavigationLink(
                destination: ContentView(),
                label: {
                    Text("Sign In")
                    
                })
            }.font(.system(size: 10))
            Spacer()
            
        }
    }
}

struct forgot_pass_Previews: PreviewProvider {
    static var previews: some View {
        forgot_pass()
    }
}

//pag3
//  registerview.swift
//  nav
//
//  Created by Aluno_Istec on 10/11/2021.
//

import SwiftUI

struct registerview: View {
    @State var username = ""
    @State var pass = ""
    @State var email = ""
    let lightpurple = Color(red: 162, green: 75, blue: 209, opacity: 1)
    var body: some View {
       
            VStack(spacing:20){
             Spacer()
            Text("Sign in").font(.largeTitle)
                
                HStack(){
                    
                Image(systemName: "person")
                    TextField("nome",text: $username).frame(width:UIScreen.main.bounds.width*0.5,height: UIScreen.main.bounds.height*0.06)
                    
                }.background(Color.white).cornerRadius(10).shadow(color: .black,radius: 10)
                
                HStack(){
                    
                Image(systemName: "envelope.open")
                    TextField("Email",text: $email).frame(width:UIScreen.main.bounds.width*0.5,height: UIScreen.main.bounds.height*0.06)
                    
                }.background(Color.white).cornerRadius(10).shadow(color: .black,radius: 10)
                
                HStack{
                    
                    Image(systemName: "lock")
                    TextField("password",text: $pass).frame(width:UIScreen.main.bounds.width*0.5,height: UIScreen.main.bounds.height*0.06)
                    
                }.background(Color.white).cornerRadius(10).shadow(color: .black,radius: 10)
                
                HStack {
                 
                
                    Image(systemName: "newspaper")
                    Text("terms and service")
                    
                }.font(.system(size: 10))
                NavigationLink(
                    destination: registerview(),
                    label: {
                        
                        Text("Create Account").frame(width: UIScreen.main.bounds.width*0.6, height:UIScreen.main.bounds.height*0.06, alignment: .center).background(LinearGradient(gradient: Gradient(colors:[.white,.purple,.purple,.purple,.purple]), startPoint: .leading, endPoint: .trailing)).cornerRadius(10)
                        
                    })
                HStack{
                Text("already created an acount?")
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        Text("Sign In")
                        
                    })
                }.font(.system(size: 10))
                Spacer()
                
            
            }
        
    }
        
        
    }


struct registerview_Previews: PreviewProvider {
    static var previews: some View {
        registerview()
    }
}
