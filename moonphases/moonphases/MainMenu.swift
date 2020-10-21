//
//  MainMenu.swift
//  moonphases
//
//  Created by Emergency on 20/10/20.
//

import SwiftUI

struct MainMenu: View {
    @State var dateViewActive = false
    @State var typesOfMoonActive = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 70) {
                NavigationLink(
                    destination: MoonPhaseForDateView(date: Date()),
                    isActive: self.$dateViewActive,
                    label: {
                        Text("Moon phase today")
                    }).font(.largeTitle)
                NavigationLink(
                    destination: TypesOfMoonPhasesView(),
                    isActive: self.$typesOfMoonActive,
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
