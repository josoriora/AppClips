//
//  MoonPhaseViewModelTests.swift
//  moonphasesTests
//
//  Created by Emergency on 19/10/20.
//

@testable import moonphases
import XCTest
import Foundation

class  MoonPhaseViewModelTests: XCTestCase {
    override func setUpWithError() throws {
        
    }
    
    override func tearDownWithError() throws {
        
    }
    
    func test_init_withDate_ReturnsInstace() throws {
        // Given
        let date = try XCTUnwrap(DateFactory.dateFrom(year: 2020, month: 8, day: 23),
                                 "Insert a valid date")
        let moonPhaseForDate = MoonPhaseForDate(date: date, moonPhase: .newMoon)
        
        // When
        let viewModel = MoonPhaseViewModel(moonPhaseForDate: moonPhaseForDate)
        
        // Then
        XCTAssertNotNil(viewModel)
        XCTAssertNotNil(viewModel.moonPhaseForDate)
        XCTAssertEqual(viewModel.title, "New Moon")
        XCTAssertEqual(viewModel.dateString, "23 August 2020")
    }
}
