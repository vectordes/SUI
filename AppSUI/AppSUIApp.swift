//
//  AppSUIApp.swift
//  AppSUI
//
//  Created by loop on 03.03.2021.
//

import SwiftUI

@main
struct AppSUIApp: App {
  @Environment(\.scenePhase) var scenePhase
  init() {
    print("AppSUI App initialiser")
  }
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(Router())
        .environmentObject(FoodScreenViewModel())
    }
    .onChange(of: scenePhase) { newScenePhase in
      switch newScenePhase {
      case .active:     print("active Phase")
      case .inactive:   print("inactive Phase")
      case .background: print("background Phase")
      @unknown default: print("unknown Phase")
      }
    }
  }
}


