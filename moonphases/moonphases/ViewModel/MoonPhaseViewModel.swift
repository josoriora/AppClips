//
//  MoonPhaseViewModel.swift
//  moonphases
//
//  Created by Emergency on 19/10/20.
//

import Foundation

class MoonPhaseViewModel {
    let moonPhaseForDate: MoonPhaseForDate
    let title: String
    
    init(moonPhaseForDate: MoonPhaseForDate) {
        self.moonPhaseForDate = moonPhaseForDate
        self.title = moonPhaseForDate.moonPhase.description()
    }
}
