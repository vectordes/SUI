//
//  FoodScreen.swift
//  AppSUI
//
//  Created by loop on 03.03.2021.
//

import SwiftUI
import Combine

final class FoodScreenViewModel: ObservableObject {
  @Published private(set) var foods = [
    Food(name: "Strawberry", emoji: "🍓", isFave: false),
    Food(name: "Apple", emoji: "🍏", isFave: true),
    Food(name: "Cheese", emoji: "🧀", isFave: false),
    Food(name: "Tomato", emoji: "🍅", isFave: true),
  ]
}

struct Food {
  var name: String
  var emoji: String
  var isFave: Bool
}

extension Food: Identifiable {
  var id: String {
    name
  }
}

struct FoodScreenOld: View {
  @EnvironmentObject var viewModel: FoodScreenViewModel
  @EnvironmentObject var router: Router
  @State var favesShowed: Bool = false

  var body: some View {
//    GeometryReader { geometry in
    NavigationView {
//      RefreshScrollView(width: geometry.size.width, height: geometry.size.height)
      List {
        Section(header: Text("Buttons"), footer: Text("Open Me !")) {
          QuickButtons()
          HStack {
            Button(action: {print("Button 1")}, label: {
              Text("Button 1")
            })
            Button(action: {print("Button 2")}, label: {
              Text("Button 2")
            })
            Button(action: {print("Button 3")}, label: {
              Text("Button 3")
            })
          }
        }
        Section(header: Text("Foods")) {
        FilterView(favesShowed: $favesShowed)
        ForEach(viewModel.foods) { item in
          if !favesShowed || item.isFave {
            HStack {
              Text("Show")
              Text(item.name)
            }
          }
        }
      }
      } // List
      .navigationTitle("Buttons & Foods")
      .navigationBarTitleDisplayMode(.inline)
      //Неявные переходы
      .overlay(
        NavigationLink(destination: FoodView(), isActive: $router.isSuperFoodShowed, label: {
          EmptyView().hidden()
        })
        
      )
      .listStyle(SidebarListStyle())
//    }
    }
  }
}

struct FoodView: View {
  var body: some View {
    Text("🌻Howdy!!")
  }
}

struct QuickButtons: View {
  var body: some View {
    HStack {
      Spacer()
      Image(systemName: "function")
        .padding()
        .font(.title3)
        .frame(width: 50, height: 50)
        .background(Color.gray)
        .foregroundColor(.white)
        .cornerRadius(8)
        .onTapGesture {
          print("function")
        }
      Spacer()
      Image(systemName: "airplane")
        .padding()
        .font(.title3)
        .frame(width: 50, height: 50)
        .background(Color.gray)
        .foregroundColor(.white)
        .cornerRadius(8)
        .onTapGesture {
          print("airplane")
        }
      Spacer()
      Image(systemName: "ipod")
        .padding()
        .font(.title3)
        .frame(width: 50, height: 50)
        .background(Color.gray)
        .foregroundColor(.white)
        .cornerRadius(8)
        .onTapGesture {
          print("ipod")
        }
      Spacer()
    }
  }
}

struct FoodListCell: View {
  var body: some View {
    NavigationLink(destination: FoodView()) {
      Text("as")//Text(item.name)
    }
  }
}

struct FilterView: View {
  @Binding var favesShowed: Bool
  
  var body: some View {
    Toggle(isOn: $favesShowed) {
      Text("Favorites")
    }
  }
}

struct FoodScreenOld_Previews: PreviewProvider {
  static var previews: some View {
    FoodScreen()
  }
}
