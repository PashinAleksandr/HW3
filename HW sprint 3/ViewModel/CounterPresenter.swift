//
//  CounterPresenter.swift
//  HW sprint 3
//
//  Created by Aleksandr Pashin on 03.09.2024.
//

import Foundation

class Presenter: VIewOutput {
    
    var view: ViewInput!
    var service: ServiceProtocol = Service.sared
    
    init(view: ViewInput) {
        self.view = view
    }
    
    func viewIsReady() {
        view.setupInitialState()
    }
}
