//
//  FoodDetails.swift
//  foods
//
//  Created by HasanTunahan on 8.06.2021.
//

import SwiftUI

struct FoodDetails: View {
    var detailElements : FoodModels
    var body: some View {

        ZStack{
            VStack{
                Image(detailElements.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(20)
                Text(detailElements.name)
                Spacer()
            }.ignoresSafeArea()
           
        }
    }
}

struct FoodDetails_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetails(detailElements: foodList[0] )
    }
}
