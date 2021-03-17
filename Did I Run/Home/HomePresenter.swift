//
//  HomePresenter.swift
//  Did I Run
//
//  Created by Olivier Butler on 16/03/2021.
//  Copyright © 2021 Olivier Butler. All rights reserved.
//

import SwiftUI



protocol HomePresentable {
    
    var homeView: HomeView { get }
    var buttonPercentCompletePublisher: Published<Int>.Publisher { get }
    var previousRuns: [String] { get }
    
}

class HomePresenter: HomePresentable {
    
    var homeView: HomeView
    var buttonPercentCompletePublisher: Published<Int>.Publisher { $buttonPercentComplete }
    var previousRuns: [String]
    
    @Published private var buttonPercentComplete: Int
    
    init(view: HomeView) {
        self.homeView = view
        self.buttonPercentComplete = 0
        self.previousRuns = []
    }
}
