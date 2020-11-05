//
//  MoonPhaseForDateView.swift
//  moonphases
//
//  Created by techtalks on 13/08/20.
//

import SwiftUI

struct MoonPhaseForDateView: View {
    @ObservedObject var viewModel: MoonPhaseViewModel
    
    var body: some View {
        VStack {
            Text("Moon Phase for date: \(viewModel.dateString)").padding()
            Image(viewModel.imageName).resizable()
                .aspectRatio(contentMode: .fit)
            Text(viewModel.title)
        }
    }
    
    init(viewModel: MoonPhaseViewModel) {
        self.viewModel = viewModel
    }
}

struct MoonPhaseForDateView_Previews: PreviewProvider {
    static var previews: some View {
        MoonPhaseForDateView(viewModel: MoonPhaseViewModel(date: Date()))
    }
}
