//
//  DAO.swift
//  mvvm_template
//
//  Created by Lucas Valle on 28/08/19.
//  Copyright © 2019 Lucas Valle. All rights reserved.
//

import UIKit
import CoreData

class DayDao: DayDaoProtocol {

    private var appDelegate: AppDelegate?
    private var context: NSManagedObjectContext?

    init() {
        appDelegate = UIApplication.shared.delegate as? AppDelegate
        context = appDelegate?.persistentContainer.viewContext
    }

    func addDay(date: Date, hour: Date) {
        guard let context = self.context else { return }
        let day = Day(context: context)
        day.date = date

        let pointTime = PointTime(context: context)
        pointTime.hour = hour
        pointTime.title = "Entrada"

        day.pointTimes?.adding(pointTime)

        appDelegate?.saveContext()
    }

    func removeDay() {
    }

    func getDayByDate(date: Date) -> Day? {
        guard let context = self.context else { return nil }
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Day")
        do {
            let result = try context.fetch(fetchRequest)
            if let results = result as? [NSManagedObject] {
                for data in results {
                    guard let day = data as? Day else { return nil }
                    if day.date?.toString() == date.toString() {
                        return day
                    }
                }
            }
        } catch {
        }
        return nil
    }
}
