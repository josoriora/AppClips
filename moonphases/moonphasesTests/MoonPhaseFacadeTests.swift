//
//  MoonPhaseFacadeTests.swift
//  moonphasesTests
//
//  Created by techtalks on 17/08/20.
//

import XCTest
@testable import moonphases

class MoonPhaseFacadeTests: XCTestCase {
    let sut = MoonPhaseFacade.self
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_MoonPhaseOn_2020Aug17_WaningCrescent() throws {
        // Given
        let date = try XCTUnwrap(DateFactory.dateFrom(year: 2020, month: 8, day: 16), "Insert a valid date")
        
        // Then
        XCTAssertEqual(sut.moonPhaseOn(date: date).moonPhase, .waningCrescent)
    }
    
    func test_MoonPhaseOn_2020Aug19_NewMoon() throws {
        // Given
        let date = try XCTUnwrap(DateFactory.dateFrom(year: 2020, month: 8, day: 19), "Insert a valid date")
        
        // Then
        XCTAssertEqual(sut.moonPhaseOn(date: date).moonPhase, .newMoon)
    }
    
    func test_MoonPhaseOn_2020Aug23_WaxingCrescent() throws {
        // Given
        let date = try XCTUnwrap(DateFactory.dateFrom(year: 2020, month: 8, day: 23), "Insert a valid date")
        
        // Then
        XCTAssertEqual(sut.moonPhaseOn(date: date).moonPhase, .waxingCrescent)
    }
    
    func test_MoonPhaseOn_2020Aug25_FirstQuarter() throws {
        // Given
        let date = try XCTUnwrap(DateFactory.dateFrom(year: 2020, month: 8, day: 25), "Insert a valid date")
        
        // Then
        XCTAssertEqual(sut.moonPhaseOn(date: date).moonPhase, .firstQuarter)
    }
    
    func test_MoonPhaseOn_2020Aug27_WaxingGibbous() throws {
        // Given
        let date = try XCTUnwrap(DateFactory.dateFrom(year: 2020, month: 8, day: 28), "Insert a valid date")
        
        // Then
        XCTAssertEqual(sut.moonPhaseOn(date: date).moonPhase, .waxingGibbous)
    }
    
    func test_MoonPhaseOn_2020Sep02_FullMoon() throws {
        // Given
        let date = try XCTUnwrap(DateFactory.dateFrom(year: 2020, month: 9, day: 2), "Insert a valid date")
        
        // Then
        XCTAssertEqual(sut.moonPhaseOn(date: date).moonPhase, .fullMoon)
    }
    
    func test_MoonPhaseOn_2020Sep07_WanningGibbous() throws {
        // Given
        let date = try XCTUnwrap(DateFactory.dateFrom(year: 2020, month: 9, day: 7), "Insert a valid date")
        
        // Then
        XCTAssertEqual(sut.moonPhaseOn(date: date).moonPhase, .waningGibbous)
    }
    
    func test_MoonPhaseOn_2020Sep10_LastQuarter() throws {
        // Given
        let date = try XCTUnwrap(DateFactory.dateFrom(year: 2020, month: 9, day: 10), "Insert a valid date")
        
        // Then
        XCTAssertEqual(sut.moonPhaseOn(date: date).moonPhase, .lastQuarter)
    }
}
