//
//  StoryboardInstantiatable.swift
//  mvvm_template
//
//  Created by Lucas Valle on 13/09/19.
//  Copyright © 2019 Lucas Valle. All rights reserved.
//

import UIKit

public protocol StoryboardInstantiatable {
    var storyboardName: String { get }
}

public extension StoryboardInstantiatable where Self: UIViewController {

    var storyboardName: String {
        return String(describing: self)
    }

    static func instantiate(storyboardName: String) -> Self {
        return initFromStoryboardHelper(storyboardName: storyboardName)
    }

    private static func initFromStoryboardHelper<T>(storyboardName: String) -> T {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let className = String(describing: self)
        let viewController = storyboard.instantiateViewController(withIdentifier: className) as! T
        return viewController
    }
}


