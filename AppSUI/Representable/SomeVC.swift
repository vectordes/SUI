import UIKit

class SomeVC: UIViewController {
  
  let titleArr = [
    "HI 👨🏿‍🦰",
    "Hello 👨🏻‍🦰",
    "Vida loca👨🏼‍🦰",
  ]
  
  lazy var titleLabel: UILabel = {
    let l = UILabel()
    l.textAlignment = .center
    l.textColor = .white
    l.font = UIFont.systemFont(ofSize: 40, weight: .heavy)
    l.numberOfLines = 2
    return l
  }()
 
  override func loadView() {
    super.loadView()
    setUI()
    setConstraints()
  }
  
  private func setUI(){
    view.backgroundColor = .systemIndigo
    titleLabel.text = titleArr.shuffled().first
    view.addSubview(titleLabel)
  }
  private func setConstraints() {
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    titleLabel.heightAnchor.constraint(equalToConstant: view.frame.size.width * 0.6).isActive = true
    titleLabel.widthAnchor.constraint(equalToConstant: view.frame.size.width * 0.6).isActive = true
  }
  
}

