//
//  Did_I_RunTests.swift
//  Did I RunTests
//
//  Created by Olivier Butler on 16/07/2020.
//  Copyright © 2020 Olivier Butler. All rights reserved.
//

import XCTest
@testable import Did_I_Run

class Did_I_RunTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_appHasStrings() {
        let testString = NSLocalizedString("Test", comment: "")
        XCTAssertEqual("Test Result", testString)
    }
}
