//
//  SignInView.swift
//  ToDoList
//
//  Created by Francisco Erick Souza Gomes on 19/04/24.
//

import SwiftUI

struct SignInView: View {
    
    @StateObject var viewModel = SignInViewModel()
    
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
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("Email Adress",text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TlButtonView(title: "Sign In",
                                 foregroundColor: .blue
                    ) {
                        viewModel.login()
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
