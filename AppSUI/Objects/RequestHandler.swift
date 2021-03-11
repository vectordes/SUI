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
    let finalURL = URL(string: baseUrlString + parametersForTenRandomRecipes + plusApiKey)!
    var request = URLRequest(url: finalURL)
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpMethod = "GET"
    URLSession.shared.dataTask(with: request) { (data, _, _) in
      guard let data = data else { return }
      //print(String(data: data, encoding: .utf8) ?? "Invalid JSON")
      let recipes = try! JSONDecoder().decode([Receipt].self, from: data)
      DispatchQueue.main.async {
        self.recipes = recipes
      }
    }.resume()
  }
}
