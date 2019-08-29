//
//  HomeViewController.swift
//  mvvm_template
//
//  Created by Lucas Valle on 28/08/19.
//  Copyright © 2019 Lucas Valle. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var dao: DayDao?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }

    private func setup() {
        dao = DayDao()
    }

    @IBAction func pressBegin(_ sender: Any) {
        guard let dayDao = dao else { return }
        let dayRepository = DayRepository(dayDao)
        dayRepository.createNewDay(date: Date(), hour: Date())
    }
}

