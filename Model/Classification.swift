//
//  Classification.swift
//  Field Survey
//
//  Created by Dylan barrett on 4/28/19.
//  Copyright © 2019 Dylan barrett. All rights reserved.
//

import UIKit

enum Classification: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
}
}
