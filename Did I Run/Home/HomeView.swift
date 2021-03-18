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
    @ObservedObject var presenter: HomePresenter // Note, the view doesn't need to know that the view model is coming from the presenter. This could be abstracted away and just have the factory pass in a publisher for the view model.
    
    var body: some View {
        let runButtonGesture = DragGesture(minimumDistance: 0)
            .onChanged({ _ in interactor?.didStartButtonPress() })
            .onEnded({ _ in interactor?.didStopButtonPress() })
        GeometryReader { metrics in
            VStack(alignment: .leading) {
                ZStack {
                    Circle()
                        .strokeBorder(Color.black, lineWidth: 1)
                        .background(Circle().fill(Color.white))
                        .gesture(
                            runButtonGesture
                        )
                    Rectangle()
                        .fill(Color.black)
                        .frame(maxHeight: CGFloat(presenter.viewState.percentageComplete)/100 * metrics.size.width)
                        .clipShape(Circle())
                        .animation(.easeInOut)
                    Text("Press and Hold to Start A Run")
                        .background(Color.white)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                }.frame(
                    minWidth: 0,
                    idealWidth: metrics.size.width,
                    maxWidth: .infinity,
                    minHeight: 0,
                    idealHeight: metrics.size.width,
                    maxHeight: metrics.size.width,
                    alignment: .leading)
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
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView(interactor: nil, presenter: <#T##HomePresenter#>)
//    }
//}
