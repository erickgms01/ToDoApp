//
//  SignUpView.swift
//  ToDoList
//
//  Created by Francisco Erick Souza Gomes on 19/04/24.
//

import SwiftUI

struct SignUpView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
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
                    TextField("Your Name",text: $name)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TextField("Email Adress",text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TlButtonView(title: "Sign Up",
                                 foregroundColor: .green
                    ) {
                        //sign up logic
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
