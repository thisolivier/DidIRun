//
//  RunStore.swift
//  Did I Run
//
//  Created by Olivier Butler on 16/03/2021.
//  Copyright © 2021 Olivier Butler. All rights reserved.
//

import Foundation

// Protocolising this is getting tricky with the ObservableObject constraint,
// The current limitations on (variadic) generics means I have no idea short of creating an AnyRunStore or generic high level service wrapper how to make the compiler happy. And that *really* seems like overkill.
//protocol RunStoring: ObservableObject {
//    var currentRunsPublisher: Published<[String]>.Publisher { get }
//
//    func saveRun(_: String)
//}

class RunStore: ObservableObject {
    var currentRunsPublisher: Published<[String]>.Publisher { $currentRuns }
    @Published private var currentRuns: [String]
    
    init () {
        currentRuns = ["Run 1", "Jog through Fog"]
    }
    
    func saveRun(_ newRun: String) {
        currentRuns.append(newRun)
    }
}
