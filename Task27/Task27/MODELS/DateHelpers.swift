//
//  DateHelpers.swift
//  Task27
//
//  Created by Austin West on 6/20/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation

extension Date {
    
    func stringValue() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: self)
    }
}
