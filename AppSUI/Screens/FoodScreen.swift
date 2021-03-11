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
  var body: some View {
    GeometryReader { geometry in
      NavigationView{
        //      RefreshScrollView(width: geometry.size.width, height: geometry.size.height)
        List(requestHandler.recipes) {
          
          RemoteImage(url: $0.image)
            .aspectRatio(contentMode: .fit).frame(width: 120)
            Text($0.title).fixedSize(horizontal: false, vertical: true)//.lineLimit(2)
            Text("\($0.calories) cal").fixedSize(horizontal: false, vertical: true)
          NavigationLink(destination: FoodDetailScreen(receipt: $0)) {}
        }.navigationBarTitle(Text("Food recipes"))
      }
    }
  }
}

struct TestScreen_Previews: PreviewProvider {
  static var previews: some View {
    FoodScreen()
  }
}
