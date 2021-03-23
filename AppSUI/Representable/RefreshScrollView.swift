////
////  RefreshScrollView.swift
////  AppSUI
////
////  Created by loop on 11.03.2021.
//
//
//import SwiftUI
//import UIKit
//
//struct RefreshScrollView: UIViewRepresentable {
//  var width:CGFloat
//  var height:CGFloat
//  let requestHandler: RequestHandler = .init()
//  
//  func makeUIView(context: Context) -> some UIScrollView {
//    let scrollView = UIScrollView()
//    scrollView.refreshControl = UIRefreshControl()
//    scrollView.refreshControl?.addTarget(context.coordinator, action: #selector(Coordinator.handleRefreshControl(sender:)), for: .valueChanged)
//    let refreshVC = UIHostingController(rootView: FoodScreen(requestHandler: requestHandler))
//    refreshVC.view.frame = CGRect(x: 0, y: 0, width: width, height: height)
//    scrollView.addSubview(refreshVC.view)
//    return scrollView
//  }
//  
//  func makeCoordinator() -> Coordinator {
//    Coordinator(self, requestHandler: requestHandler)
//  }
//  
//  func updateUIView(_ uiView: UIViewType, context: Context) {}
//  
//  class Coordinator: NSObject {
//    var refreshScrollView: RefreshScrollView
//    var requestHandler: RequestHandler
//    
//    init(_ refreshScrollView: RefreshScrollView, requestHandler: RequestHandler) {
//      self.refreshScrollView = refreshScrollView
//      self.requestHandler = requestHandler
//    }
//    
//    @objc func handleRefreshControl(sender:UIRefreshControl) {
//      sender.endRefreshing()
//      requestHandler = RequestHandler()
//    }
//  }
//  
//}
