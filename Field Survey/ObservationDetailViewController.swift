//
//  ObservationDetailViewController.swift
//  Field Survey
//
//  Created by Dylan barrett on 4/28/19.
//  Copyright © 2019 Dylan barrett. All rights reserved.
//

import UIKit

class ObservationDetailViewController: UIViewController {
    
    var creatureObservation: Observations?
    var dateFormatter = DateFormatter()

    @IBOutlet weak var observationIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Observation"
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        observationIconImageView.image = creatureObservation?.classification.image
        titleLabel.text = creatureObservation?.title
        
        if let date = creatureObservation?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        descriptionTextView.text = creatureObservation?.description
    }
}
