//
//  TlButtonView.swift
//  ToDoList
//
//  Created by Francisco Erick Souza Gomes on 19/04/24.
//

import SwiftUI

struct TlButtonView: View {
    let title: String
    let foregroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        }label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

struct TlButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TlButtonView(title: "title", foregroundColor: .blue, action: {
            //action
        })
    }
}
