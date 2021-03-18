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
    
    var presenter: HomePresenter
    let runStore: RunStore
    
    init(presenter: HomePresenter, runStore: RunStore) {
        self.presenter = presenter
        self.runStore = runStore
    }
    
    func didStartButtonPress() {
        print("We should replace these with publishable things")
        presenter.startButtonIncrimenting()
        
    }
    
    func didStopButtonPress() {
        print("They should be hooked up in an Rx-ee fashion")
        presenter.resetButtonIncrimenting()
    }
}
