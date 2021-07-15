//
//  topMenuCard.swift
//  foods
//
//  Created by HasanTunahan on 6.06.2021.
//

import SwiftUI
struct TopCardMenu: View {
    var body: some View {
        Text("Populer")
            .frame(minWidth: 0, idealWidth: 100, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .font(.system(size: 24,weight: .medium))
            .padding(.init(top: 0, leading: 20, bottom: -10, trailing: 10))
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                VStack{
                    Image("1")
                        .resizable()
                        .frame(width: 150, height: 120,alignment: .center)
                        .cornerRadius(10.0, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    Text("Kahvaltı").font(.system(size: 12))
                }.padding()
                VStack{
                    Image("2")
                        .resizable()
                        .frame(width: 150, height: 120,alignment: .center)
                        .cornerRadius(10.0, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    Text("Adana Yemekleri").font(.system(size: 12))
                }.padding()
                VStack{
                    Image("3")
                        .resizable()
                        .frame(width: 150, height: 120,alignment: .center)
                        .cornerRadius(10.0, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    Text("Antep Yemekleri").font(.system(size: 12))
                }.padding()
            }
        }
    }
}
