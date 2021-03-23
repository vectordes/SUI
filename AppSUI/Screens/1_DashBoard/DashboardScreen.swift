//
//  MainScreen.swift
//  AppSUI
//
//  Created by loop on 10.03.2021.
//

import SwiftUI

//MARK: - Views
struct DashboardScreen: View {
  @EnvironmentObject var router: Router
  
  @State private var showSomeUIKitView = false
  var body: some View {
    VStack{
      Button(action: {
          router.selection = 1
          router.isSuperFoodShowed = true
      }) {
        Text("go to food")
      }
      .padding()
      .background(Color.pink)
      .foregroundColor(Color.white)
      .cornerRadius(8)
   
      Button(action: {
        self.showSomeUIKitView = true
      }) {
        Text("go to UIKit View 🎲")
      }
      .padding()
      .background(Color.pink)
      .foregroundColor(Color.white)
      .cornerRadius(8)
    }
    .sheet(isPresented:$showSomeUIKitView , content: {
      SomeUIKitVC()
    })
  }
}

struct DashboardScreen_Previews: PreviewProvider {
  static var previews: some View {
    AboutScreen()
  }
}
