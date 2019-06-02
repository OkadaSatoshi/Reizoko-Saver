//
//  ItemListViewModel.swift
//  Reizoko-Saver
//
//  Created by 岡田聡 on 2019/05/27.
//  Copyright © 2019 SatoshiOkada. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class ItemListViewModel {
    
    private let itemsRelay: BehaviorRelay<[Item]>  = BehaviorRelay(value: [])
    var items: Observable<[Item]> {
        return itemsRelay.asObservable()
    }
    
    init() {
        refleshItems()
    }
    
    func refleshItems() {
        print("reflesh")
    }
    
}
