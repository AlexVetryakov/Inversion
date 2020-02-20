//
//  MainViewController.swift
//  DependensyInd
//
//  Created by Developer on 2/20/20.
//  Copyright © 2020 AlexanderVetryakov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak private var locationLabel: UILabel!
    @IBOutlet weak private var locationButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func updateLocation(sender: UIButton) {
        locationLabel.text = LocationService.shared.getLocation()
    }

}
