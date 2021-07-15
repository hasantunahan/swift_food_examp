




import SwiftUI


struct ProductModel : Codable,Identifiable {
    var id: Int;
    var title: String;
    var description: String;
}


class ProductApi {
    
    func getProduct(completion : @escaping ([ProductModel]) -> ()){
        
        let url = URL(string: "https://fakestoreapi.com/products")

        URLSession.shared.dataTask(with: url!) { data, response, error in
            if let data = data {
                if let decodeData = try? JSONDecoder().decode([ProductModel].self, from: data){
                    DispatchQueue.main.async {
                        completion(decodeData)
                    }
                }
            }
        }.resume()
        
        
        
    }
        
    
}
