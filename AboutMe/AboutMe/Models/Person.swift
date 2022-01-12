//
//  Person.swift
//  AboutMe
//
//  Created by Trevor Walker on 1/6/22.
//

import UIKit

class Person {
    let name            : String
    let occupation      : String
    let description     : String
    let profilePicture  : UIImage
    let birthDay        : String
    
    init(name: String, birthDay: String, occupation: String, description: String, profilePicture: UIImage) {
        self.name           = name
        self.occupation     = occupation
        self.description    = description
        self.profilePicture = profilePicture
        self.birthDay = birthDay
    }
}
