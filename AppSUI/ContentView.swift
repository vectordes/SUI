//  ContentView.swift
//  AppSUI
import SwiftUI

struct ContentView: View {
  @State private var selection = 1
  var body: some View {
    TabView(selection: $selection) {
      DashboardScreen(tabSelection: $selection)
        .tabItem {
          VStack{
            Text("Main")
            Image(systemName: "star")
              .font(Font.largeTitle.weight(.heavy))
          }
        }
        .tag(0)
      FoodScreen()
        .tabItem {
          Text("Food")
          Image(systemName: "flame.fill")
            .font(Font.footnote.weight(.ultraLight))
        }
        .tag(1)
      
      
      AboutScreen()
        .tabItem {
          Text("About")
          Image(systemName: "star")
        }
        .tag(2)
      
      
//      FoodScreenOld()
//        .tabItem {
//          Text("Old")
//          Image(systemName: "pills")
//        }
//        .tag(3)
      
    }.accentColor(.red)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

