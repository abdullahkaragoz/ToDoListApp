//
//  RegisterView.swift
//  TodoList
//
//  Created by Abdullah Karagöz on 23.08.2023.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        VStack{
            HeaderView(title: "Kayıt Ol", subTitle: "İnanmak başarmanın yarısıdır 🙏", angle: 15, backgroudColor: Color.indigo, subTitleAngle: 15)
            
            Form{
                TextField("Ad Soyad", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .disableAutocorrection(true)

                TextField("E-Posta", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
                SecureField("Şifre", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
             
                TLButton(
                    title: "Kayıt Ol",
                    background: Color.indigo) {
                        viewModel.register()
                }
                
            }
            .offset(y: -90)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
