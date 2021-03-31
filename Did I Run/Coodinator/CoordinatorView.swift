//
//  CoordinatorView.swift
//  Did I Run
//
//  Created by Olivier Butler on 31/03/2021.
//  Copyright © 2021 Olivier Butler. All rights reserved.
//

import SwiftUI

struct CoordinatorView: View {
    
    var homeView: HomeView
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("Hello")) {
                homeView.navigationBarTitle("Home")
            }
        }
    }
}
