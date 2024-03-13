//
//  LoginView.swift
//  ToDoApp
//
//  Created by Francisco Erick Souza Gomes on 13/03/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 12)
                .frame(width: UIScreen.main.bounds.width * 3, height: 300)
                .foregroundColor(.pink)
                
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
