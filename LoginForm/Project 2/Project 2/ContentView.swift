//
//  ContentView.swift
//  Project 2
//
//  Created by RMP on 25/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var loginStatusMessage: String = ""
    @State var loginBoolean = false
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack {
                
                
                VStack {
                    
                    VStack {
                        
                        Image(systemName: "globe")
                        Text("Login Form").fontWeight(.black)
                        
                    }.font(.largeTitle).padding(.bottom, 40)
                    
                    TextField("Username", text: $username).padding().frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height / 13, alignment: .center).foregroundColor(.primary).overlay(alignment: .center) {
                        
                        RoundedRectangle(cornerRadius: 10).strokeBorder(lineWidth: 0.5)
                        
                    }.autocorrectionDisabled()
                    
                    SecureField("Password", text: $password)
                        .padding().frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height / 13, alignment: .center).foregroundColor(.primary).overlay(alignment: .center) {
                            
                            RoundedRectangle(cornerRadius: 10).strokeBorder(lineWidth: 0.5)
                            
                        }
                    
                     
                    loginBoolean ? Text(loginStatusMessage).foregroundColor(.primary).fontWeight(.semibold) : Text(loginStatusMessage).foregroundColor(.red).fontWeight(.semibold)
                    
                    
                }.padding()
                
                
                
                Button {
                    detectLogin()
                } label: {
                    
                    RoundedRectangle(cornerRadius: 13).foregroundColor(.blue).frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height / 13, alignment: .center).overlay(alignment: .center) {
                        
                        Text("Login").foregroundColor(.white).fontWeight(.bold)
                        
                    }
                    
                }

                
                
            }
            .padding()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension ContentView {
    
    func detectLogin() {
        
        if username == "Malcolm" && password == "asd@123" {
            
            loginStatusMessage = "Login Successfully"
            loginBoolean = true
            
        } else {
            
            loginBoolean = false
            loginStatusMessage = "Fail To Login"
            
        }
        
    }
    
}
