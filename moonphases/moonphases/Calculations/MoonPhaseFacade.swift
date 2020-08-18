//
//  MoonPhaseFacade.swift
//  moonphases
//
//  Created by techtalks on 17/08/20.
//

import Foundation

enum MoonPhase {
    case newMoon
    case waxingCrescent
    case firstQuarter
    case waxingGibbous
    case fullMoon
    case waningGibbous
    case lastQuarter
    case waningCrescent
}

final class MoonPhaseFacade {
    static private let precision = 0.05
    static private let newMoonPhaseValue = 0.0
    static private let firstQuarterPhaseValue = 0.25
    static private let fullMoonPhaseValue = 0.5
    static private let lastQuarterPhaseValue = 0.75
    
    static func moonPhaseOn(date: Date) -> MoonPhase? {
        let moonIluminationInfo = SwiftySuncalc().getMoonIllumination(date: date)
        
        if let phase = moonIluminationInfo["phase"] {
            return nameForPhase(phase)
        } else {
            return nil
        }
    }
    
    static func nameForPhase(_ phase: Double) -> MoonPhase {
        
        if doubleEqual(phase, newMoonPhaseValue) {
            return .newMoon
        } else if phase < firstQuarterPhaseValue {
            return .waxingCrescent
        } else if doubleEqual(phase, firstQuarterPhaseValue) {
            return .firstQuarter
        } else if phase < fullMoonPhaseValue {
            return .waxingGibbous
        } else if doubleEqual(phase, fullMoonPhaseValue) {
            return .fullMoon
        } else if phase < lastQuarterPhaseValue {
            return .waningGibbous
        } else if doubleEqual(phase, lastQuarterPhaseValue) {
            return .lastQuarter
        } else {
            return .waningCrescent
        }
    }
    
    static private func doubleEqual(_ a: Double, _ b: Double) -> Bool {
        return fabs(a - b) < precision
    }
}
