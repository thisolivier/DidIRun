//
//  CoordinatorFactory.swift
//  Did I Run
//
//  Created by Olivier Butler on 31/03/2021.
//  Copyright © 2021 Olivier Butler. All rights reserved.
//

import SwiftUI

struct CoordinatorFactory {
    
    func makeCoordinatorView(homeView: HomeView) -> some View {
        return CoordinatorView(homeView: homeView)
    }
}
