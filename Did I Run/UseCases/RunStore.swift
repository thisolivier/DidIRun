//
//  RunStore.swift
//  Did I Run
//
//  Created by Olivier Butler on 16/03/2021.
//  Copyright © 2021 Olivier Butler. All rights reserved.
//

import Foundation

protocol RunStoring {
    var currentRuns: Published<[String]>.Publisher { get }
    
    func saveRun(_: String)
}
