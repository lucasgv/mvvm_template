//
//  HomeViewController.swift
//  mvvm_template
//
//  Created by Lucas Valle on 28/08/19.
//  Copyright © 2019 Lucas Valle. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: Variables

    var homeViewModel: HomeViewModel?

    // MARK: IBOutlets

    @IBOutlet weak var labelWeekDay: UILabel!

    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupDayInfo()
    }

    // MARK: Private

    private func setupDayInfo() {
        labelWeekDay.text = homeViewModel?.weekDay
    }

    // MARK: IBActions

    @IBAction func pressBegin(_ sender: Any) {
        homeViewModel?.startMyDay()
    }
}

extension HomeViewController: StoryboardInstantiatable {}

