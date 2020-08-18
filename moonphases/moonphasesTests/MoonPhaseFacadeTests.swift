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
    
    func test_NameForPhase_NewMoon() {
        // Given
        let phase = 0.0
        
        // Then
        XCTAssertEqual(sut.nameForPhase(phase), .newMoon)
    }
    
    func test_NameForPhase_WaxingCrescent() {
        // Given
        let phase = 0.15
        
        // Then
        XCTAssertEqual(sut.nameForPhase(phase), .waxingCrescent)
    }
    
    func test_NameForPhase_FirstQuarter() {
        // Given
        let phase = 0.25
        
        // Then
        XCTAssertEqual(sut.nameForPhase(phase), .firstQuarter)
    }
    
    func test_NameForPhase_WaxingGibbous() {
        // Given
        let phase = 0.4
        
        // Then
        XCTAssertEqual(sut.nameForPhase(phase), .waxingGibbous)
    }
    
    func test_NameForPhase_FullMoon() {
        // Given
        let phase = 0.5
        
        // Then
        XCTAssertEqual(sut.nameForPhase(phase), .fullMoon)
    }
    
    func test_NameForPhase_WaningGibbous() {
        // Given
        let phase = 0.6
        
        // Then
        XCTAssertEqual(sut.nameForPhase(phase), .waningGibbous)
    }
    
    func test_NameForPhase_LastQuarter() {
        // Given
        let phase = 0.75
        
        // Then
        XCTAssertEqual(sut.nameForPhase(phase), .lastQuarter)
    }
    
    func test_NameForPhase_WaningCrescent() {
        // Given
        let phase = 1.0
        
        // Then
        XCTAssertEqual(sut.nameForPhase(phase), .waningCrescent)
    }
}
