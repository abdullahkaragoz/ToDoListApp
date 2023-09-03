//
//  MainViewViewModel.swift
//  TodoList
//
//  Created by Abdullah Karagöz on 23.08.2023.
//

import FirebaseAuth
import Foundation


class MainViewModel : ObservableObject {
    @Published var currentUserId : String = ""
    private var handler : AuthStateDidChangeListenerHandle?
    
    init (){
        self.handler = Auth.auth().addStateDidChangeListener{ [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    public var isSignIn : Bool {
        return Auth.auth().currentUser != nil
    }
}
