//
//  ContentView.swift
//  Did I Run
//
//  Created by Olivier Butler on 16/07/2020.
//  Copyright © 2020 Olivier Butler. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Favagana")
                .font(.largeTitle)
                .fontWeight(.bold)
                
            HStack {
                Text("Cala Rossa")
                    .font(.subheadline)
                Spacer()
                Text("Home")
                    .font(.subheadline)
            }
        }
        .padding([.top, .leading, .trailing], 15.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
