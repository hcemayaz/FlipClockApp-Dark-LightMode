//
//  Date+Time Formatter.swift
//  FlipClock
//
//  Created by cemayaz on 17.01.2022.
//

import Foundation

extension DateFormatter {

    static var timeFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HHmmss"
        return formatter
    }

}
