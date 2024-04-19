//
//  SignInView.swift
//  ToDoList
//
//  Created by Francisco Erick Souza Gomes on 19/04/24.
//

import SwiftUI

struct SignInView: View {
    
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
            VStack {
                //Header
                HeaderView()
                
                //Form
                Form {
                    TextField("Email Adress",text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button{
                        
                    }label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            
                            Text("Sign In")
                                .foregroundColor(.white)
                                .bold()
                                
                        }
                    }
                }
                
                //Create Account
                
                VStack {
                    Text("New here?")
                        .foregroundColor(.black)
                
                    NavigationLink("Create New Account", destination: SignUpView())
                }
                .padding(.bottom, 35)
                Spacer()
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
