//
//  MoonPhaseViewModel.swift
//  moonphases
//
//  Created by Emergency on 19/10/20.
//

import Foundation

class MoonPhaseViewModel: ObservableObject {
    let moonPhaseForDate: MoonPhaseForDate
    let title: String
    let dateString: String
    let imageName: String
    
    init(date: Date) {
        self.moonPhaseForDate = MoonPhaseFacade.moonPhaseOn(date: date)
        self.title = moonPhaseForDate.moonPhase.description()
        self.dateString = type(of: self).dateStringFor(date: moonPhaseForDate.date)
        self.imageName = type(of: self).imageNameFor(phase: moonPhaseForDate.moonPhase)
    }
    
    private static func dateStringFor(date: Date) -> String {
        let formatter = DateFormatter()
        
        formatter.dateFormat = "d MMMM y"
        return formatter.string(from: date)
    }
    
    private static func imageNameFor(phase: MoonPhase) -> String {
        switch phase {
        case .newMoon:
            return "newMoon"
        case .waxingCrescent:
            return "waxingCrescent"
        case .firstQuarter:
            return "firstQuarter"
        case .waxingGibbous:
            return "waxingGibbous"
        case .fullMoon:
            return "fullMoon"
        case .waningGibbous:
            return "waningGibbous"
        case .lastQuarter:
            return "lastQuarter"
        case .waningCrescent:
            return "waningCrescent"
        }
    }
}
