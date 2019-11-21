//
//  DayDaoMock.swift
//  mvvm_template
//
//  Created by Lucas Valle on 29/08/19.
//  Copyright © 2019 Lucas Valle. All rights reserved.
//

import UIKit
import CoreData

class DayDaoMock: DayDaoProtocol {

    private var appDelegate: AppDelegate?
    private var context: NSManagedObjectContext?

    init() {
        appDelegate = UIApplication.shared.delegate as? AppDelegate
        context = appDelegate?.persistentContainer.viewContext
    }

    func addDay(date: Date, hour: Date) {
        
    }

    func removeDay() {
    }

    func getDayByDate(date: Date) -> Day? {
        return nil
    }
}

