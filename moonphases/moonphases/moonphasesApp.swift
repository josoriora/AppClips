//
//  moonphasesApp.swift
//  moonphases
//
//  Created by techtalks on 13/08/20.
//

import SwiftUI

final class AppViewModel: ObservableObject {
    @Published var mainMenuViewModel: MainMenuViewModel
    
    init(_ mainmenu: MainMenuViewModel = .init()) {
        self.mainMenuViewModel = mainmenu
    }
}

@main
struct moonphasesApp: App {
    @StateObject var viewModel: AppViewModel = .init()
    
    var body: some Scene {
        WindowGroup {
            MainMenu(viewModel: viewModel.mainMenuViewModel)
                .onOpenURL(perform: { url in
                    let selectedDate: Date = Date(timeIntervalSinceNow: -(60 * 60 * 24 * 2))
                    let isMoonPhaseView: Bool = true
                    
                    // parsea
                    
                    viewModel.mainMenuViewModel.date = selectedDate
                    viewModel.mainMenuViewModel.dateViewActive = isMoonPhaseView
                })
        }
    }
}
