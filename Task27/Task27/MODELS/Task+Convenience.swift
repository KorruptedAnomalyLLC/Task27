//
//  Task+Convenience.swift
//  Task27
//
//  Created by Austin West on 6/19/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation
import CoreData

extension Task {
    convenience init(name: String, notes: String? = nil, due: Date? = nil, context: NSManagedObjectContext = CoreDataStack.context) {
        
        
        self.init(context: context)
        
        self.name = name
        self.notes = notes
        self.due = due as NSDate? as Date?
        self.isComplete = false
    }
    
}
