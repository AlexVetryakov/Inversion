//
//  MainViewController.swift
//  DependensyInd
//
//  Created by Developer on 2/20/20.
//  Copyright © 2020 AlexanderVetryakov. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    @IBOutlet weak private var locationLabel: UILabel!

    private var locationService: Locationable?
    private var locationServiceFromFunction: Locationable?
    var locationServiceFromProperty: Locationable?

    init(locationService: Locationable) {
        self.locationService = locationService

        super.init(nibName: String(describing: MainViewController.self), bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addLocationService(locationService: Locationable) {
        locationServiceFromFunction = locationService
    }


    @IBAction private func updateLocation(sender: UIButton) {
        locationLabel.text = locationService?.getLocation()
    }

    @IBAction private func updateLocationFromFunc(sender: UIButton) {
        locationLabel.text = locationServiceFromFunction?.getLocation()
    }

    @IBAction private func updateLocationFromProperty(sender: UIButton) {
        locationLabel.text = locationServiceFromProperty?.getLocation()
    }

}
