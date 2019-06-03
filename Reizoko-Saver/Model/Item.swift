//
//  Item.swift
//  Reizoko-Saver
//
//  Created by 岡田聡 on 2019/05/27.
//  Copyright © 2019 SatoshiOkada. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class Item: Object {
    dynamic var name: String = ""
    dynamic var number: ItemNumber = ItemNumber()
    dynamic var image: UIImage?
    dynamic var purchaseDate: Date = Date()
    dynamic var expirationDate: Date = Date()
}

class ItemNumber: Object {
    dynamic var number: Int = 0
    dynamic private var unit = ""
    var unitType: UnitType? {
        get {
            return UnitType(rawValue: unit)
        }
        set {
            unit = newValue?.rawValue ?? ""
        }
    }
}

enum UnitType: String {
    case gram = "g"
    case cm
    case ml
}
