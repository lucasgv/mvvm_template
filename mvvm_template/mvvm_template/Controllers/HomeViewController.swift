//
//  HomeViewController.swift
//  mvvm_template
//
//  Created by Lucas Valle on 28/08/19.
//  Copyright © 2019 Lucas Valle. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    lazy var homeViewModel: HomeViewModel = {
        let container = DependencyContainer()
        return container.homeViewModelDependency()
    }()

    @IBOutlet weak var labelWeekDay: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupDayInfo()
    }

    private func setupDayInfo() {
        labelWeekDay.text = homeViewModel.weekDay
    }

    @IBAction func pressBegin(_ sender: Any) {
        let dayRepository = DayRepository(dao: DayDao())
        dayRepository.createNewDay(date: Date(), hour: Date())
    }
}

