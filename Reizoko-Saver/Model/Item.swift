//
//  Item.swift
//  Reizoko-Saver
//
//  Created by 岡田聡 on 2019/05/27.
//  Copyright © 2019 SatoshiOkada. All rights reserved.
//

import Foundation
import UIKit

struct Item {
    var name: String
    var number: ItemNumber
    var image: UIImage
    var purchaseDate: Date
    var expirationDate: Date
}

struct ItemNumber {
    var number: Int = 0
    var unitType: UnitType
}

enum UnitType {
    case gram
    case cm
    case ml
}
