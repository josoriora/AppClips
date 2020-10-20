//
//  MoonPhaseFacade.swift
//  moonphases
//
//  Created by techtalks on 17/08/20.
//

import Foundation

final class MoonPhaseFacade {
    static func moonPhaseOn(date: Date) -> MoonPhaseForDate {
        let moonPhase = AstrologyCalculator.getMoonPhase(date: date)
        
        return MoonPhaseForDate(date: date, moonPhase: moonPhase)
    }
}

struct MoonPhaseForDate {
    let date: Date
    let moonPhase: MoonPhase
}

extension MoonPhase {
    func description() -> String {
        switch self {
        case .newMoon:
            return "New Moon"
        case .waxingCrescent:
            return "Waxing Crescent"
        case .firstQuarter:
            return "First Quarter"
        case .waxingGibbous:
            return "Waxing Gibbous"
        case .fullMoon:
            return "Full Moon"
        case .waningGibbous:
            return "Waning Gibbous"
        case .lastQuarter:
            return "Last Quarter"
        case .waningCrescent:
            return "Waning Crescent"
        }
    }
}
