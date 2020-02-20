//
//  LocationService.swift
//  DependensyInd
//
//  Created by Developer on 2/18/20.
//  Copyright © 2020 AlexanderVetryakov. All rights reserved.
//

import Foundation

final class LocationService {

    static let shared = LocationService()

    var locations = ["Dnipro", "Kyev", "Kharkiv", "Rovno", "Lviv"]

    private init() { }

    func getLocation() -> String {

        let result = locations.randomElement()

        return result ?? "Unknown lacation"
    }

}
