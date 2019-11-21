//
//  HomeViewModel.swift
//  mvvm_template
//
//  Created by Lucas Valle on 28/08/19.
//  Copyright © 2019 Lucas Valle. All rights reserved.
//

import Foundation

public class HomeViewModel {

    // MARK: - Properties

    private let dayRepository: DayRepository

    public var weekDay: String? {
        return dayRepository.returnSavedTodayDay()?.date?.dayOfWeek()
    }

    // MARK: - Object Lifecycle

    init(dayRepository: DayRepository) {
        self.dayRepository = dayRepository
    }

    // MARK: - Public

    func startMyDay() {
        dayRepository.createNewDay(date: Date(), hour: Date())
    }


}
