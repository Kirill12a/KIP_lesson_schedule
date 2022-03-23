//
//  MainTabBarController.swift
//  Kip
//
//  Created by Kirill Drozdov on 23.03.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let searchVC      =   ViewController()
    let favouriteVC   =   ViewController()

    viewControllers = [
      setUpNavigationController(title: "Search", image: UIImage(systemName: "magnifyingglass.circle.fill"), rootViewController: searchVC),
      setUpNavigationController(title: "Favourite", image: UIImage(systemName: "heart.circle.fill"), rootViewController: favouriteVC)
    ]

  }

  private func setUpNavigationController(title: String, image: UIImage?, rootViewController: UIViewController) -> UIViewController {
    let navigationViewController = UINavigationController(rootViewController: rootViewController)
    navigationViewController.tabBarItem.image = image
    navigationViewController.tabBarItem.title = title
    return navigationViewController
  }
}

