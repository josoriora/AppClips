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
    static func moonPhaseOn(date: Date) -> MoonPhase? {
        let moonIluminationInfo = SwiftySuncalc().getMoonIllumination(date: date)
        
        if let phase = moonIluminationInfo["phase"] {
            return nameForPhase(phase)
        } else {
            return nil
        }
    }
    
    static func nameForPhase(_ phase: Double) -> MoonPhase {
        return .newMoon
    }
}
