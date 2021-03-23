//
//  Router.swift
//  AppSUI
//
//  Created by loop
//

import Combine
import SwiftUI

final class Router: ObservableObject {
  @Published var selection: Int = 0//1
  @Published var isSuperFoodShowed: Bool = false
}
