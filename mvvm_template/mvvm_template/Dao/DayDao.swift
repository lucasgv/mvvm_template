//
//  DAO.swift
//  mvvm_template
//
//  Created by Lucas Valle on 28/08/19.
//  Copyright © 2019 Lucas Valle. All rights reserved.
//

import UIKit

class DayDao: DayDaoProtocol {

    func addDay(date: Date, hour: Date) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }

        let context = appDelegate.persistentContainer.viewContext
        let day = Day(context: context)
        day.date = date

        let pointTime = PointTime(context: context)
        pointTime.hour = hour
        pointTime.title = "Entrada"

        day.pointTimes?.adding(pointTime)

        appDelegate.saveContext()
    }

    func removeDay() {
    }
}
