//
//  ContentView.swift
//  TodoList
//
//  Created by Abdullah Karagöz on 23.08.2023.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    var body: some View {
        if viewModel.isSignIn, !viewModel.currentUserId.isEmpty {
            TodoListView() // Signed In
        }
        else {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
