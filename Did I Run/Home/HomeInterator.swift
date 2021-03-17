//
//  RootCoordinator.swift
//  Did I Run
//
//  Created by Olivier Butler on 16/03/2021.
//  Copyright © 2021 Olivier Butler. All rights reserved.
//

import Foundation

protocol HomeInteractorable {
    func didStartButtonPress()
    func didStopButtonPress()
}

class HomeInteractor: HomeInteractorable {
    
    var presenter: HomePresentable
    
    init(presenter: HomePresentable) {
        self.presenter = presenter
    }
    
    func didStartButtonPress() {
        print("We should replace these with publishable things")
    }
    
    func didStopButtonPress() {
        print("They should be hooked up in an Rx-ee fashion")
    }
}