//
//  HeaderView.swift
//  TodoList
//
//  Created by Abdullah Karagöz on 23.08.2023.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subTitle : String
    let angle : Double
    let backgroudColor: Color
    let subTitleAngle : Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                //.foregroundColor(Color.indigo)
                //.rotationEffect(Angle(degrees: -15))
                .foregroundColor(backgroudColor)
                .rotationEffect(Angle(degrees: angle))
            VStack{
                //Text("Yapılacaklar Listesi")
                    Text(title)
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.system(size: 40, weight: .semibold))
                    .padding(.top,10)
                //Text("Hedeflerin için bir şeyler yap ✓")
                    Text(subTitle)
                    .font(.system(size: 30,weight:.thin))
                    .bold()
                    .foregroundColor(Color.white)
                    .rotationEffect(Angle(degrees: subTitleAngle))
                    .offset(y: 90)
            }
            .padding(.top,80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -250)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Yapılacaklar Listesi", subTitle: "Hedeflerin için bir şeyler yap ✓", angle: -15, backgroudColor: Color.indigo,subTitleAngle: -15)
    }
}
