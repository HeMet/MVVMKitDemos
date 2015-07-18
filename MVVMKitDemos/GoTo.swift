//
//  GoTo.swift
//  MVVMKitDemos
//
//  Created by Евгений Губин on 18.07.15.
//  Copyright (c) 2015 GitHub. All rights reserved.
//

import Foundation
import MVVMKit

struct GoTo {
    static let root = present(!DemosListViewController.self).withinNavView().asRoot()
    
    // Segue must be manual
    static let segueIntegrationDemo = present(!StubViewController.self).withSegue("SegueIntegrationSegue") { stubViewModel in
        return [stubViewModel]
    }
    
    static let simpleTransitionDemo = present(!StubViewController.self).withTransition(Transitions.show)
}