//
//  StubViewController.swift
//  MVVMKitDemos
//
//  Created by Евгений Губин on 18.07.15.
//  Copyright (c) 2015 GitHub. All rights reserved.
//

import UIKit
import MVVMKit

class StubViewController: UIViewController, SBViewForViewModel {
    static let sbInfo = (sbID: "Main", viewID: "StubViewController")
    
    var viewModel: StubViewModel!
    
    func bindToViewModel() {
        // do nothing
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindToViewModel()
    }
}
