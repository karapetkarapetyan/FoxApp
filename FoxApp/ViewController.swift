//
//  ViewController.swift
//  FoxApp
//
//  Created by Karapet on 09.04.22.
//

import UIKit

import UIKit
class ViewController: UIViewController {
  var imageView: UIImageView!
  var typeLabel: UILabel!
  var typeButton: UIButton!
  override func viewDidLoad() {
    super.viewDidLoad()
    initTypeLabel()
    initImageView()
    initTypeButton()
    constructHierarchy()
    activateConstraints()
  }
  @objc func buttonAction(sender: UIButton!) {
      imageView.image = UIImage(named: "Juniper_fox")
  }
}
// MARK: - Layout
extension ViewController {
  private func initTypeLabel() {
    typeLabel = UILabel()
    typeLabel.backgroundColor = .yellow
      typeLabel.text = "This is Juniper Fox"
    typeLabel.translatesAutoresizingMaskIntoConstraints = false
  }
  private func initImageView() {
    imageView = UIImageView()
    imageView.backgroundColor = .white
      imageView.image = UIImage(named: "Juniper_fox")
    imageView.layer.cornerRadius = 12
    imageView.clipsToBounds = true
    imageView.translatesAutoresizingMaskIntoConstraints = false
  }
  private func initTypeButton() {
    typeButton = UIButton(type: .system)
    typeButton.backgroundColor = .yellow
      typeButton.setTitle("Push ", for: .normal)
    typeButton.layer.cornerRadius = 30
    typeButton.contentEdgeInsets = UIEdgeInsets(top: 20, left: 30, bottom: 20, right: 30)
    typeButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    typeButton.translatesAutoresizingMaskIntoConstraints = false
  }
  private func constructHierarchy() {
    view.addSubview(typeButton)
    view.addSubview(typeLabel)
    view.addSubview(imageView)
  }
  private func activateConstraints() {
    NSLayoutConstraint.activate([
      typeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
      typeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
    NSLayoutConstraint.activate([
      imageView.heightAnchor.constraint(equalToConstant: 300),
      imageView.widthAnchor.constraint(equalToConstant: 300)
    ])
    NSLayoutConstraint.activate([imageView.centerXAnchor.constraint(
      equalTo: view.centerXAnchor
    ),imageView.centerYAnchor.constraint(
      equalTo: view.centerYAnchor)
    ])
    NSLayoutConstraint.activate([
      typeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
      typeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
}
