//
//  RequestHandler.swift
//  AppSUI
//
//  Created by loop on 11.03.2021.
//

import Foundation

class RequestHandler: ObservableObject {
  init() {
    fetchData()
  }
  @Published var recipes = [Receipt]()
  private func fetchData() {
    //max 150 request per day
    
    self.recipes = [Receipt(id: 0, calories: 0, title: "хаха", image:"https://www.e-architect.com/wp-content/uploads/2017/02/gorki-house-a070217-u12.jpg", imageType: "img", protein: "10", fat: "10", carbs: "10")]
//    let finalURL = URL(string: baseUrlString + parametersForTenRandomRecipes + plusApiKey)!
//    var request = URLRequest(url: finalURL)
//    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//    request.httpMethod = "GET"
//    URLSession.shared.dataTask(with: request) { (data, _, _) in
//      guard let data = data else { return }
//      //print(String(data: data, encoding: .utf8) ?? "Invalid JSON")
//      let recipes = try! JSONDecoder().decode([Receipt].self, from: data)
//      DispatchQueue.main.async {
//        self.recipes = recipes
//      }
//    }.resume()
  }
}
