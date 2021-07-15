//
//  ContentView.swift
//  foods
//
//  Created by HasanTunahan on 6.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State var products : [ProductModel] = [];
    
    var body: some View {
        NavigationView{
            ZStack{
                BackgroundWidget(begin: .white, end: .gray)
                ScrollView(.vertical){
                    TopCardMenu()
                    CategoriesWidget()
                    FoodCard()
                    
                    ForEach(products){ product in
                            Text(product.title)
                                .font(.body)
                                .fontWeight(.black)
                                .multilineTextAlignment(.center)
                    }
                }.onAppear{
                    ProductApi().getProduct { (products) in
                        self.products = products;
                    }
                    
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct BackgroundWidget: View {
    let begin : Color;
    let end: Color;
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [begin,begin]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint:.bottomLeading)
            .edgesIgnoringSafeArea( .all)
    }
}



struct CategoriesWidget: View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Categories")
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 0, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(20)
                .font(.system(size: 18,weight: .medium))
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    CategoriesCard(id: 1, categoryName: "Doner")
                    CategoriesCard(id: 2, categoryName: "Burger")
                    CategoriesCard(id: 3, categoryName: "Kebab")
                    CategoriesCard(id: 4, categoryName: "Tatlı")
                    CategoriesCard(id: 5, categoryName: "Kahvaltılık")
                    CategoriesCard(id: 6, categoryName: "Pide/Lahmacun")
                    
                }.padding(.init(top: 0, leading: 20, bottom: 0, trailing: 10))
            }
            
            
        }
    }
}

struct FoodCard: View {
    var body: some View {
        HStack{
            ScrollView(.horizontal,showsIndicators:false){
                HStack{
                    ForEach(foodList){ item in
                        NavigationLink(
                            destination: FoodDetails(detailElements: item)){
                            Foods(name: item.name, image: item.image)
                        }
                    }
                }
            }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
    }
}


