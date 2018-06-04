//
//  Person.swift
//  Profiler
//
//  Created by cbrown on 6/4/18.
//  Copyright © 2018 Christopher Brown. All rights reserved.
//

import Foundation
import UIKit

class Person {
    var firstName: String
    var lastName: String
    var dob: String?
    var image: UIImage?
    var notes: String?
    
    init(firstName: String, lastName: String, dob: String?, image: UIImage?, notes: String?)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.dob = dob
        self.image = image
        self.notes = notes
    }
    
}
