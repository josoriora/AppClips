//
//  File.swift
//  moonphasesTests
//
//  Created by Emergency on 19/10/20.
//

import Foundation

class DateFactory {
    static func dateFrom(year: Int, month: Int, day: Int) -> Date? {
        // Specify date components
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day

        // Create date from components
        let userCalendar = Calendar.current // user calendar
        return userCalendar.date(from: dateComponents)
    }
}
