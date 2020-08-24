//
//  MoonPhaseFacade.swift
//  moonphases
//
//  Created by techtalks on 17/08/20.
//

import Foundation

final class MoonPhaseFacade {
    static func moonPhaseOn(date: Date) -> MoonPhase? {
        return AstrologyCalculator.getMoonPhase(date: date)
    }
}
