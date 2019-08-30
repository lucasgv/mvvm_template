//
//  DependencyContainer.swift
//  mvvm_template
//
//  Created by Lucas Valle on 29/08/19.
//  Copyright © 2019 Lucas Valle. All rights reserved.
//

import Foundation

class DependencyContainer {
    private lazy var homeViewModel = HomeViewModel(dayRepository: DayRepository(dao: DayDao()))
}

extension DependencyContainer {
    func homeViewModelDependency() -> HomeViewModel {
        return homeViewModel
    }
}
