//
//  MainMenu.swift
//  moonphases
//
//  Created by Emergency on 20/10/20.
//

import SwiftUI

final class MainMenuViewModel: ObservableObject {
    @Published var dateViewActive = false
    @Published var typesOfMoonActive = false
    @Published var date = Date()
}

struct MainMenu: View {
    @ObservedObject var viewModel = MainMenuViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 70) {
                NavigationLink(
                    destination: MoonPhaseForDateView(viewModel: MoonPhaseViewModel(date: viewModel.date)),
                    isActive: $viewModel.dateViewActive,
                    label: {
                        Text("Moon phase today")
                    }).font(.largeTitle)
                NavigationLink(
                    destination: TypesOfMoonPhasesView(),
                    isActive: $viewModel.typesOfMoonActive,
                    label: {
                        Text("Types of Moon phases")
                    }).font(.largeTitle)
            }
        }
    }

}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
