//
//  CategoriesCard.swift
//  foods
//
//  Created by HasanTunahan on 6.06.2021.

import SwiftUI

struct CategoriesCard: View{
    let id : Int;
    let categoryName : String;
    var body: some View{
        Text(categoryName)
            .font(.system(size: 20))
            .foregroundColor(Color("appRed"))
            .padding(.init(top: 0, leading: 5, bottom: 0, trailing: 5))
        
    }
}
