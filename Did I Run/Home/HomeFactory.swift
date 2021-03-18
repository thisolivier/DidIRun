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
    let dataContainer: NSPersistentContainer
    let runStore: RunStore
    
    func makeHomeView() -> some View {
        let context = dataContainer.viewContext
//            .environmentObject(runStore)
        let presenter = HomePresenter()
        let interactor = HomeInteractor(presenter: presenter, runStore: runStore)
        let homeView = HomeView(interactor: interactor, presenter: presenter)
        return homeView.environment(\.managedObjectContext, context)
    }
}
