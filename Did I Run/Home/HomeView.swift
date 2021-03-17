//
//  ContentView.swift
//  Did I Run
//
//  Created by Olivier Butler on 16/07/2020.
//  Copyright © 2020 Olivier Butler. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    let interactor: HomeInteractorable?
    @State var persentageFull: Int
    @State var previousRuns: [String]
    
    var body: some View {
        let runButtonGesture = DragGesture(minimumDistance: 0)
            .onChanged({ _ in interactor?.didStartButtonPress() })
            .onEnded({ _ in interactor?.didStopButtonPress() })
        
        VStack(alignment: .leading) {
            ZStack {
                Circle()
                    .stroke()
                    .frame(width: 100.0, height: 100.0)
                    .gesture(
                        runButtonGesture
                    )
                Text("Press and Hold to Start A Run")
            }
            Text("Your Runs")
                .font(.largeTitle)
                .fontWeight(.bold)
                
            HStack {
                Text("Cala Rossa")
                Spacer()
                Text("Homererer")
                Spacer()
                Text("Third option")
                Spacer()
                Text("Fouth really long option that will break things")
            }
        }
        .padding([.top, .leading, .trailing], 15.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(interactor: nil, persentageFull: 100, previousRuns: ["Run One", "Run Two"])
    }
}
