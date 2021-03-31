//
//  HomeFactory.swift
//  Did I Run
//
//  Created by Olivier Butler on 16/03/2021.
//  Copyright © 2021 Olivier Butler. All rights reserved.
//

import SwiftUI
import CoreData

struct HomeFactory {
    let runStore: RunStore
    
    func makeHomeView() -> HomeView? {
        let presenter = HomePresenter()
        let interactor = HomeInteractor(presenter: presenter, runStore: runStore)
        let homeView = HomeView(interactor: interactor, presenter: presenter)
        return homeView
    }
}
