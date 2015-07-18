//
//  BaseViewModel.swift
//  MVVMKitDemos
//
//  Created by Евгений Губин on 18.07.15.
//  Copyright (c) 2015 GitHub. All rights reserved.
//

import Foundation
import MVVMKit

class BaseViewModel: ViewModel {
    var onDisposed: ViewModelEventHandler?
    
    func dispose() {
        onDisposed?(self)
    }
}