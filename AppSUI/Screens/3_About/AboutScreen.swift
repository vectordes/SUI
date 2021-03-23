//
//  Screens.swift
//  AppSUI
//
//  Created by loop on 03.03.2021.
//

import SwiftUI
struct AboutScreen: View {
  @State var isModal: Bool = false
  var modal: some View {
    VStack{
      Image(systemName: "moon.stars").font(Font.system(size: 77).weight(.heavy))
      Text("Good moon today")
    }
  }
  
  var body: some View {
    Button("ModalVC") {
      self.isModal = true
    }.sheet(isPresented: $isModal, content: {
      self.modal
    }).foregroundColor(.purple).font(Font.system(size: 20).weight(.bold))
  }
}

struct AboutScreen_Previews: PreviewProvider {
  static var previews: some View {
    AboutScreen()
  }
}
