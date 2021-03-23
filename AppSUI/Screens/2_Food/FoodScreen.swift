//
//  FoodScreen.swift
//  AppSUI
//
//  Created by loop on 11.03.2021.
//

import SwiftUI
import Combine

struct FoodScreen: View {
  @ObservedObject var requestHandler: RequestHandler = .init()
  @EnvironmentObject var router: Router
  var body: some View {
    NavigationView {
      List(requestHandler.recipes) {
        RemoteImage(url: $0.image)
          .aspectRatio(contentMode: .fit).frame(width: 120)
        Text($0.title).fixedSize(horizontal: false, vertical: true)//.lineLimit(2)
        Text("\($0.calories) cal").fixedSize(horizontal: false, vertical: true)
          //          NavigationLink(destination: FoodDetailScreen(receipt: $0)) {}
          .overlay(
            NavigationLink(destination: FoodDetailScreen(receipt: $0), isActive: $router.isSuperFoodShowed, label: {
              EmptyView().hidden()
            })
          )
      }
      .navigationTitle("Food recipes")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct TestScreen_Previews: PreviewProvider {
  static var previews: some View {
    FoodScreen()
  }
}
