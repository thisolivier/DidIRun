//
//  RunStore.swift
//  Did I Run
//
//  Created by Olivier Butler on 16/03/2021.
//  Copyright © 2021 Olivier Butler. All rights reserved.
//

import Foundation

protocol RunStoring {
    var currentRunsPublisher: Published<[String]>.Publisher { get }
    
    func saveRun(_: String)
}

class RunStore: RunStoring {
    var currentRunsPublisher: Published<[String]>.Publisher { $currentRuns }
    @Published private var currentRuns: [String]
    
    init () {
        currentRuns = ["Run 1", "Jog through Fog"]
    }
    
    func saveRun(_ newRun: String) {
        currentRuns.append(newRun)
    }
}
