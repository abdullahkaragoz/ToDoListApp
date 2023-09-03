//
//  LoginView.swift
//  TodoList
//
//  Created by Abdullah Karagöz on 23.08.2023.
//

import SwiftUI

struct LoginView: View {
   

    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack {
            //Header
                HeaderView(title: "Yapılacaklar Listesi", subTitle: "Hedeflerin için bir şeyler yap ✓", angle: -15, backgroudColor: Color.indigo,subTitleAngle: -15)
             
            //Login Form
                Form {
            
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.indigo)
                    }
                    
                    TextField("E-Posta", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .disableAutocorrection(true)
                    
                    SecureField("Şifre", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())

                    TLButton(
                        title: "Giriş Yap",
                        background: Color.indigo) {
                            viewModel.login()
                        }
                    
                }.offset(y: -50)
                  //  .frame(height: 300)
                            
             //Create
                VStack{
                    Text("Hesabın yok mu?")
                    NavigationLink("Hesap Oluştur", destination: RegisterView())
                }.padding(.bottom,10)
                
                Spacer()
            }
        }        
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView()
        }
    }
}
