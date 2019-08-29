//
//  DayGenerator.swift
//  mvvm_template
//
//  Created by Lucas Valle on 28/08/19.
//  Copyright © 2019 Lucas Valle. All rights reserved.
//

import Foundation

class DayRepository {

    private var dao: DayDaoProtocol

    init(_ dao: DayDaoProtocol) {
        self.dao = dao
    }

    convenience init(dao: DayDaoProtocol) {
        self.init(dao)
    }

    func createNewDay(date: Date, hour: Date) {
        dao.addDay(date: date, hour: hour)
    }
}
