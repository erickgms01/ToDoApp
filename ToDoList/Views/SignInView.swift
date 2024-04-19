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
                HeaderView(title: "Sign In",
                           subtitle: "Get Things Done",
                           angle: 15,
                           backgroundColor: .red,
                           offset: -95)
                
                //Form
                Form {
                    TextField("Email Adress",text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TlButtonView(title: "Sign In",
                                 foregroundColor: .blue
                    ) {
                        //login logic
                    }
                    .padding()
                }
                .offset(y: -45)
                
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
