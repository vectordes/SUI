////
////  FoodScreen.swift
////  AppSUI
////
////  Created by loop on 03.03.2021.
////
//
//import SwiftUI
//import Combine
//
//final class FoodScreenViewModel: ObservableObject {
//  @Published private(set) var foods = [
//    Food(name: "Strawberry", emoji: "🍓", isFave: false),
//    Food(name: "Apple", emoji: "🍏", isFave: true),
//    Food(name: "Cheese", emoji: "🧀", isFave: false),
//    Food(name: "Tomato", emoji: "🍅", isFave: true),
//  ]
//}
//
//struct Food {
//  var name: String
//  var emoji: String
//  var isFave: Bool
//}
//
//extension Food: Identifiable {
//  var id: String {
//    name
//  }
//}
//
//struct FoodScreenOld: View {
//  @ObservedObject var viewModel: FoodScreenViewModel = .init()
//  @State var favesShowed: Bool = false
//
//  var body: some View {
//    NavigationView {
//      List {
//        FilterView(favesShowed: $favesShowed)
//        ForEach(viewModel.foods) { item in
//          if !favesShowed || item.isFave {
//            HStack {
//              Text("Show")
//              Text(item.name)
//              NavigationLink(destination: Text(item.emoji)) {
//
//              }
//
//            }
//          }
//        }
//      } // List
//    }
//  }
//}
//
//
//struct FoodView: View {
//  var body: some View {
//    Text("Start Page")
//  }
//}
//
//struct FoodListCell: View {
//  var body: some View {
//    NavigationLink(destination: FoodView()) {
//      Text("as")//Text(item.name)
//    }
//  }
//}
//
//struct FilterView: View {
//  @Binding var favesShowed: Bool
//
//  var body: some View {
//    Toggle(isOn: $favesShowed) {
//      Text("Favorites")
//    }
//  }
//}
//
//struct FoodScreenOld_Previews: PreviewProvider {
//  static var previews: some View {
//    FoodScreen()
//  }
//}
