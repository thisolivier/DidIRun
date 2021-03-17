//
//  TimeController.swift
//  Did I Run
//
//  Created by Olivier Butler on 16/03/2021.
//  Copyright © 2021 Olivier Butler. All rights reserved.
//

import Foundation

protocol TimeControlling {
    var startedPublisher: Published<Bool>.Publisher { get }
    var timeElapsed: TimeInterval { get }
    
    func start()
}

class TimeController: TimeControlling {
    
    var startedPublisher: Published<Bool>.Publisher { $started }
    var timeElapsed: TimeInterval { self.getTimeElapsed() }
    
    private var startTime: Date?
    @Published private var started: Bool
    
    init() {
        self.started = false
    }
    
    func start() {
        self.startTime = Date()
    }
    
    private func getTimeElapsed() -> TimeInterval {
        guard let startTime = self.startTime else {
            return TimeInterval.zero
        }
        return startTime.timeIntervalSinceNow
    }
}
