//
//  Did_I_RunUITests.swift
//  Did I RunUITests
//
//  Created by Olivier Butler on 16/07/2020.
//  Copyright © 2020 Olivier Butler. All rights reserved.
//

import XCTest

class Did_I_RunUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_appLaunches() {
        let app = XCUIApplication()
        app.launch()
        XCTAssertGreaterThan(app.children(matching: .any).count, 0)
    }
    
    func test_appDisplaysStartRunButtonOnLaunch() {
        let app = XCUIApplication()
        app.launch()
        XCTAssertTrue(app.staticTexts["Press and Hold to Start A Run"].exists)
    }

    func testLaunchPerformance() {
        if #available(iOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
