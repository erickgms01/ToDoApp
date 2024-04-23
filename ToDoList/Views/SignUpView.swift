//
//  SignUpView.swift
//  ToDoList
//
//  Created by Francisco Erick Souza Gomes on 19/04/24.
//

import SwiftUI

struct SignUpView: View {
    
    @StateObject var viewModel = SignUpViewModel();
    
    var body: some View {
        
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "Sign Up",
                           subtitle: "Start organizing todos",
                           angle: -15,
                           backgroundColor: .orange,
                           offset: -135)
                
                //Register Forms
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("Your Name",text: $viewModel.name)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                    
                    TextField("Email Adress",text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TlButtonView(title: "Sign Up",
                                 foregroundColor: .green
                    )
                    {
                        viewModel.signUp()
                    }
                }
                .offset(y: -80)
                Spacer()
            }
        }
       
    }
   
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
