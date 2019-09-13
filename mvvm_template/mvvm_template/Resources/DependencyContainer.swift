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
    private lazy var homeViewModelMock = HomeViewModel(dayRepository: DayRepository(dao: DayDaoMock()))
}

extension DependencyContainer {

    func homeViewModelDependency() -> HomeViewModel {
        if Constants.useMock {
            return homeViewModelMock
        } else {
            return homeViewModel
        }
    }
}
