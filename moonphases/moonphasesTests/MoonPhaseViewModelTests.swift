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
        
        // When
        let viewModel = MoonPhaseViewModel(date: date)
        
        // Then
        XCTAssertNotNil(viewModel)
        XCTAssertEqual(viewModel.date, date)
    }
}

class MoonPhaseViewModel {
    let date: Date
    
    init(date: Date) {
        self.date = date
    }
}
