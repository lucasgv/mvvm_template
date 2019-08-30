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


}

extension Date {
    func dayOfWeek() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self).capitalized
    }

    func toString(format: String = "yyyy-MM-dd") -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}
