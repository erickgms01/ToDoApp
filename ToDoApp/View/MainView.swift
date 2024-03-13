//
//  MainView.swift
//  ToDoApp
//
//  Created by Francisco Erick Souza Gomes on 13/03/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            NavigationStack {
                LoginView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
