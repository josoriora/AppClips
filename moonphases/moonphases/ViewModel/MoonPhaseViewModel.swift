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
    let dateString: String
    
    init(moonPhaseForDate: MoonPhaseForDate) {
        self.moonPhaseForDate = moonPhaseForDate
        self.title = moonPhaseForDate.moonPhase.description()
        self.dateString = type(of: self).dateStringFor(date: moonPhaseForDate.date)
    }
    
    private static func dateStringFor(date: Date) -> String {
        let formatter = DateFormatter()
        
        formatter.dateFormat = "d MMMM y"
        return formatter.string(from: date)
    }
}
