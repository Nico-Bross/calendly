//
//  DateValue.swift
//  calandar (iOS)
//
//  Created by Nico Bro on 19.07.22.
//

import SwiftUI

//Date VAlue MOdel...

struct DateValue: Identifiable{
    var id = UUID().uuidString
    var day: Int
    var date: Date
}

