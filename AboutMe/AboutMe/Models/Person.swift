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
    private let yob     : Int
    
    var age: Int {
        get {
            let calendar = Calendar.current
            let now = calendar.dateComponents([.year], from: Date())
            // Be sure to explain that we will be covering what that explanation point is later.
            return now.year! - yob
        }
    }
    
    init(name: String, yob: Int, occupation: String, description: String, profilePicture: UIImage) {
        self.name           = name
        self.occupation     = occupation
        self.description    = description
        self.profilePicture = profilePicture
        self.yob = yob
    }
}
