//
//  ObservationsJSONLoader.swift
//  Field Survey
//
//  Created by Dylan barrett on 4/28/19.
//  Copyright © 2019 Dylan barrett. All rights reserved.
//

import Foundation

class ObservationsJSONLoader {
    class func load(fileName: String) -> [Observations] {
        var observations = [Observations]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            
            observations = ObservationsJSONParser.parse(data)
        }
        return observations
    }
}
