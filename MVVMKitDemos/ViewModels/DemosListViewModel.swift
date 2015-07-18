//
//  DemosListViewModel.swift
//  MVVMKitDemos
//
//  Created by Евгений Губин on 18.07.15.
//  Copyright (c) 2015 GitHub. All rights reserved.
//

import Foundation
import MVVMKit

enum Demos: Int {
    case SegueIntegration, SimpleTranstition
}

class DemosListViewModel: BaseViewModel {
    
    func showDemo(demo: Demos) {
        switch demo {
        case .SegueIntegration:
            GoTo.segueIntegrationDemo(sender: self)(StubViewModel())
        case .SimpleTranstition:
            GoTo.simpleTransitionDemo(sender: self)(StubViewModel())
        }
    }
}