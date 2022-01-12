//
//  ViewController.swift
//  AboutMe
//
//  Created by Trevor Walker on 1/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var descTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Trevor",
                            birthDay: "2001/03/16",
                            occupation: "iOS Developer",
                            description: "I code stuff",
                            profilePicture: #imageLiteral(resourceName: "karl"))
        updateUI(with: person)
    }
    
    func updateUI(with person: Person) {
        nameLabel.text = "Name: \(person.name)"
        occupationLabel.text = person.occupation
        descTextField.text = person.description
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        ageLabel.text = "Age: \(myAge(birthday: formatter.date(from: person.birthDay)!))"
        profileImageView.image = person.profilePicture
        
        // <----- If you run need to fill more time ----->
        descTextField.isUserInteractionEnabled = false
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        profileImageView.clipsToBounds = true
        profileImageView.layer.borderColor = UIColor.cyan.cgColor
        profileImageView.layer.borderWidth = 4
        profileImageView.contentMode = .scaleAspectFill
    }
    
    func myAge(birthday: Date) -> Int {
        let age = Calendar.current.dateComponents([.year], from: birthday, to: Date())
        return age.year ?? 0
    }
}

