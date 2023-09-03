//
//  LoginViewViewModel.swift
//  TodoList
//
//  Created by Abdullah Karagöz on 23.08.2023.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate () -> Bool {
        func login() {
            guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
                  !password.trimmingCharacters(in: .whitespaces).isEmpty else {
                      errorMessage = "Lütfen boş alanları doldurunuz.!"
                return
            }
            
            guard email.contains("@") && email.contains(".") else {
                errorMessage = "Lütfen geçerli e-posta adresi giriniz"
                return
            }
            
        }
        return true
    }
}
