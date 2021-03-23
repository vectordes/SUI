//
//  FoodDetailScreen.swift
//  AppSUI
//
//  Created by loop on 11.03.2021.
//

import SwiftUI
struct FoodDetailScreen: View {
  @State var receipt: Receipt
  var body: some View {
    VStack(alignment: .center){
      RemoteImage(url: receipt.image)
        .aspectRatio(contentMode: .fit)
      Text(receipt.title).font(Font.system(size: 20).weight(.black)).foregroundColor(.red)
      Text(
        """
        calories: \(receipt.calories)
        protein: \(receipt.protein)
        fat in grams: \(receipt.fat)
        carbohydrates in grams: \(receipt.carbs)
        """)
    }
  }
}

struct FoodDetailScreen_Previews: PreviewProvider {
  static var previews: some View {
    AboutScreen()
  }
}
