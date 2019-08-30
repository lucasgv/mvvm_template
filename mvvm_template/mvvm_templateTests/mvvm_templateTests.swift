//
//  mvvm_templateTests.swift
//  mvvm_templateTests
//
//  Created by Lucas Valle on 28/08/19.
//  Copyright © 2019 Lucas Valle. All rights reserved.
//

import XCTest
@testable import mvvm_template

class mvvm_templateTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let homeViewController = HomeViewController()
        homeViewController.homeViewModel = HomeViewModel(dayRepository: DayRepository(dao: DayDaoMock()))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
