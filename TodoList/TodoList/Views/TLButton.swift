//
//  TLButton.swift
//  TodoList
//
//  Created by Abdullah Karagöz on 23.08.2023.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: ()-> Void
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(background)
 //               .frame(height: 300)
            Text(title)
                .foregroundColor(Color.white)
                .bold()
            }
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Kayıt Ol", background: Color.purple) {
            //Action
        }
    }
}
