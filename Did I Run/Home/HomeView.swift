//
//  ContentView.swift
//  Did I Run
//
//  Created by Olivier Butler on 16/07/2020.
//  Copyright © 2020 Olivier Butler. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Circle()
                    .stroke()
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                Text("Press & Hold to Start")
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
        HomeView()
    }
}
