//
//  MainScreen.swift
//  AppSUI
//
//  Created by loop on 10.03.2021.
//

import SwiftUI

//MARK: - Views
struct DashboardScreen: View {
  @Binding var tabSelection: Int
  var body: some View {
    Button("go to food") {
      self.tabSelection = 1
    }
  }
}

struct DashboardScreen_Previews: PreviewProvider {
  static var previews: some View {
    AboutScreen()
  }
}
