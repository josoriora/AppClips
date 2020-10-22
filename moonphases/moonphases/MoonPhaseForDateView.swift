//
//  MoonPhaseForDateView.swift
//  moonphases
//
//  Created by techtalks on 13/08/20.
//

import SwiftUI

struct MoonPhaseForDateView: View {
    private let date: Date
    @State private var viewModel: MoonPhaseViewModel?
    
    var body: some View {
        VStack {
            Text("Moon Phase for date: \(viewModel?.dateString ?? "")").padding()
            Image(viewModel?.imageName ?? "").resizable()
                .aspectRatio(contentMode: .fit)
            Text(viewModel?.title ?? "")
        }.onAppear(perform: {
            self.loadViewModel()
        })
    }
    
    init(date: Date) {
        self.date = date
    }
    
    private func loadViewModel() {
        let moonPhase = MoonPhaseFacade.moonPhaseOn(date: date)
        
        self.viewModel = MoonPhaseViewModel(moonPhaseForDate: moonPhase)
    }
}

struct MoonPhaseForDateView_Previews: PreviewProvider {
    static var previews: some View {
        MoonPhaseForDateView(date: Date())
    }
}
