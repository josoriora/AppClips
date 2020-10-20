//
//  ContentView.swift
//  moonphases
//
//  Created by techtalks on 13/08/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var viewModel: MoonPhaseViewModel?
    var body: some View {
        VStack {
            Text("Moon Phase").padding()
            Text(viewModel?.title ?? "")
        }.onAppear(perform: {
            self.loadViewModel()
        })
    }
    
    private func loadViewModel() {
        let date = Date()
        let moonPhase = MoonPhaseFacade.moonPhaseOn(date: date)
        
        self.viewModel = MoonPhaseViewModel(moonPhaseForDate: moonPhase)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
