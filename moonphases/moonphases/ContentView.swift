//
//  ContentView.swift
//  moonphases
//
//  Created by techtalks on 13/08/20.
//

import SwiftUI

struct ContentView: View {
    private let date: Date
    @State private var viewModel: MoonPhaseViewModel?
    
    var body: some View {
        VStack {
            Text("Moon Phase for date: \(viewModel?.dateString ?? "")").padding()
            Text(viewModel?.title ?? "")
        }.onAppear(perform: {
            self.loadViewModel()
        })
    }
    
    init(date: Date) {
        self.date = date
    }
    
    private func loadViewModel() {
        let date = Date()
        let moonPhase = MoonPhaseFacade.moonPhaseOn(date: date)
        
        self.viewModel = MoonPhaseViewModel(moonPhaseForDate: moonPhase)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(date: Date())
    }
}
