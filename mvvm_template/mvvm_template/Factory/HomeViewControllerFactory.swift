//
//  HomeViewControllerFactory.swift
//  mvvm_template
//
//  Created by Lucas Valle on 13/09/19.
//  Copyright © 2019 Lucas Valle. All rights reserved.
//

import Foundation

struct HomeViewControllerFactory {
    static func instantiate() -> HomeViewController {
        let viewController = HomeViewController.instantiate(storyboardName: "Main")
        viewController.homeViewModel = DependencyContainer().homeViewModelDependency()
        return viewController
    }
}
