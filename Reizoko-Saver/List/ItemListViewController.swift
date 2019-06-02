//
//  ItemListViewController.swift
//  Reizoko-Saver
//
//  Created by 岡田聡 on 2019/05/27.
//  Copyright © 2019 SatoshiOkada. All rights reserved.
//

import UIKit
import RxSwift

class ItemListViewController: UIViewController {
    
    private let viewModel = ItemListViewModel()
    
    var showEdit: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private func setupObserver() {
        
    }
    @IBAction func addItem(_ sender: Any) {
        if let showEdit = showEdit {
            showEdit()
        }
    }
    
}
