//
//  DateFormatter+Extensions.swift
//  BeReal-Clone
//
//  Created by Rebecca Chen on 2023/3/25.
//

//
//  DateFormatter+Extensions.swift
//  lab-insta-parse
//
//  Created by Charlie Hieger on 11/3/22.
//

import Foundation

extension DateFormatter {
    static var postFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }()
}

