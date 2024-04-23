//
//  MainView.swift
//  ToDoList
//
//  Created by Francisco Erick Souza Gomes on 19/04/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel();
    
    var body: some View {
        if viewModel.isSigned, !viewModel.currentUserId.isEmpty {
            ToDoListView()
        }else {
            SignInView()
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
