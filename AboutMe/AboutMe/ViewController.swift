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
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    func updateUI() {
        nameLabel.text = "Name: Trevor"
        occupationLabel.text = "iOS Developer"
        descTextField.text = "I code stuff"
        descTextField.isUserInteractionEnabled = false
        ageLabel.text = "Age: \(age(yearBorn: 2001))"
        profileImageView.image = UIImage(named: "karl")!
        
        // <----- If you run need to fill more time ----->
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        profileImageView.clipsToBounds = true
        profileImageView.layer.borderColor = UIColor.cyan.cgColor
        profileImageView.layer.borderWidth = 4
        profileImageView.contentMode = .scaleAspectFill
    }

    func age(yearBorn year: Int) -> Int {
        let calendar = Calendar.current
        let now = calendar.dateComponents([.year], from: Date())
        // Be sure to explain that we will be covering what that explanation point is later.
        return now.year! - year
    }
}

