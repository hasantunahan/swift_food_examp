//
//  FoodCardWidget.swift
//  foods
//
//  Created by HasanTunahan on 8.06.2021.
//

import SwiftUI
struct Foods: View {
    let name: String;
    let image: String;
    var body: some View {
        VStack(alignment: .leading){
            Image(image)
                .resizable()
                .frame(width: 180, height: 180,alignment: .center)
                .cornerRadius(20)
            Text(name)
                .font(.system(size: 10))
                .foregroundColor(.green)
            
        }
        .frame(width: 200, height: 220)
        .background(Color(.white))
        .cornerRadius(20)
        .padding(.all,10)
        .shadow(color: .gray, radius: 2, x: 0.3, y: 0.2)
    }
}
