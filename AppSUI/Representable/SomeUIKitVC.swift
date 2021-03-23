import SwiftUI
struct SomeUIKitVC: UIViewControllerRepresentable {
  func makeUIViewController(context: Context) -> some UIViewController {
    let vc = SomeVC()
    vc.modalPresentationStyle = .formSheet
    return vc
  }
  
  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    
  }
}
