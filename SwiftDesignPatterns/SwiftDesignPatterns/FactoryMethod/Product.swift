//
//  Product.swift
//  SwiftDesignPatterns
//
//  Created by guxuan on 21/12/2017.
//  Copyright © 2017 StoryTeaRoom. All rights reserved.
//

import Foundation

class RentalCar {
    private var nameBV: String
    private var passengersBV: Int
    private var priceBV: Float
    
    fileprivate init(name: String, passengers: Int, price: Float) {
        self.nameBV = name
        self.passengersBV = passengers
        self.priceBV = price
    }
    
    final var name: String {
        get {
            return nameBV
        }
    }
    
    final var passengers: Int {
        get {
            return passengersBV
        }
    }
    
    final var price: Float {
        get {
            return priceBV
        }
    }
    
    class func createRentalCar(passengers: Int) -> RentalCar? {
        var car: RentalCar?
        switch passengers {
        case 0...3:
            car = Compact()
        case 4...8:
            car = SUV()
        default:
            car = nil
        }
        
        return car
    }
}


class Compact: RentalCar {
    fileprivate init() {
        super.init(name: "WV Golf", passengers: 3, price: 20)
    }
}


class SUV: RentalCar {
    fileprivate init() {
        super.init(name: "SUV", passengers: 8, price: 75)
    }
}
