//
//  HomePresenter.swift
//  Did I Run
//
//  Created by Olivier Butler on 16/03/2021.
//  Copyright © 2021 Olivier Butler. All rights reserved.
//

import SwiftUI
import Combine

//protocol HomePresentable {
//
//    var buttonPercentCompletePublisher: Published<Int>.Publisher { get }
//    var previousRuns: [String] { get }
//
//    func setView(homeView: HomeView)
//
//}

class HomePresenter: ObservableObject {
    
    @Published private(set) var viewState: HomeViewModel
    private var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    private var subscription: AnyCancellable?
    
    init() {
        viewState = HomeViewModel(percentageComplete: 0, runs: [])
    }
    
    func startButtonIncrimenting() {
        subscription = timer.sink { date in
            self.viewState.setPercentageComplete(self.viewState.percentageComplete + 10)
        }
    }
    
    func resetButtonIncrimenting() {
        subscription?.cancel()
        subscription = nil
        self.viewState.setPercentageComplete(0)
    }
}

struct HomeViewModel {
    var percentageComplete: Float
    let runs: [String]
    
    mutating func setPercentageComplete(_ percentage: Float) {
        self.percentageComplete = percentage
    }
}
