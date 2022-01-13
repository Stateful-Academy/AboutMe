//
//  Data.swift
//  AboutMe
//
//  Created by Karl Pfister on 1/12/22.
//

import Foundation
import UIKit

struct Data {
    static let people: [Person] = [Person(name: "Karl MEME",
                                          birthDay: "2022/01/10",
                                          occupation: "Dank",
                                          description: "I code stuff",
                                          profilePicture: #imageLiteral(resourceName: "karl")),
                                   Person(name: "Bernie Sanders", birthDay: "1941/09/08", occupation: "American politician and activist", description: "Bernard Sanders is an American politician and activist who has served as the junior United States senator from Vermont since 2007 and as the U.S. representative for the state's at-large congressional district from 1991 to 2007. He will become Vermont's senior senator and dean of its congressional delegation following the scheduled retirement of Patrick Leahy in January 2023. He is the longest-serving independent in U.S. congressional history, although he has a close relationship with the Democratic Party, having caucused with House and Senate Democrats for most of his congressional career.[1] Sanders unsuccessfully sought the Democratic Party nomination for president of the United States in 2016 and 2020, finishing in second place in both campaigns. Before his election to Congress, he was mayor of Burlington, Vermont.", profilePicture: UIImage(imageLiteralResourceName: "Bernie")),
                                   Person(name: "Horace Slughorn", birthDay: "1922/08/16", occupation: "Potions Master", description: "Horace Slughorn is the long-serving Potions teacher and Head of Slytherin House since at least the 1940s, until his retirement after the 1981–82 school year. Following his retirement and the resurgence of Voldemort, Slughorn goes into hiding, concealing all knowledge of his whereabouts from both sides in the growing conflict in the wizarding world.", profilePicture: UIImage(named: "Horace")!)]
}
