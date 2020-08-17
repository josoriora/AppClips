//
//  SwiftySunCalcTests.swift
//  moonphasesTests
//
//  Created by techtalks on 17/08/20.
//

import XCTest
import moonphases

class SwiftySunCalcTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetMoonIlumination() throws {
        let date = try XCTUnwrap(dateFrom(year: 2020, month: 8, day: 17), "Insert a valid date")
        
        let dictionary = SwiftySuncalc().getMoonIllumination(date: date)
        let fraction: Double = try XCTUnwrap(dictionary["fraction"])
        let phase: Double = try XCTUnwrap(dictionary["phase"])
        let angle: Double = try XCTUnwrap(dictionary["angle"])
        
        print("fraction: \(fraction)")
        print("phase: \(phase)")
        print("angle: \(angle)")
    }

}

fileprivate extension SwiftySunCalcTests {
    func dateFrom(year: Int, month: Int, day: Int) -> Date? {
        // Specify date components
        var dateComponents = DateComponents()
        dateComponents.year = 1980
        dateComponents.month = 7
        dateComponents.day = 11

        // Create date from components
        let userCalendar = Calendar.current // user calendar
        return userCalendar.date(from: dateComponents)
    }
}
