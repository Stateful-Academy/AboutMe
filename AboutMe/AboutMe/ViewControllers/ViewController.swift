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
    @IBOutlet weak var currentPlaceLabel: UILabel!
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        profileImageView.contentMode = .scaleAspectFit
        updateUI()
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        if index > 0 {
            index -= 1
            updateUI()
        }
    }
    @IBAction func forwardButtonPressed(_ sender: Any) {
        if index < Data.people.count - 1 {
            index += 1
            updateUI()
        }
    }
    func updateUI() {
        let person = Data.people[index]
        nameLabel.text = "Name: \(person.name)"
        occupationLabel.text = person.occupation
        descTextField.text = person.description
        profileImageView.image = person.profilePicture
        currentPlaceLabel.text = "(\(index + 1) / \(Data.people.count))"
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        ageLabel.text = "Age: \(myAge(birthday: formatter.date(from: person.birthDay)!))"
        
        // <----- Stretch Goals ----->
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

