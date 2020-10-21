//
//  TypesOfMoonPhasesView.swift
//  moonphases
//
//  Created by Emergency on 20/10/20.
//

import Foundation

import SwiftUI

struct TypesOfMoonPhasesView: View {
    @State var moonPhases = MoonPhaseFacade.typesOfMoonPhases()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(moonPhases, id: \.self) { moonPhase in
                    Text(moonPhase.description())
                }
            }
        }
    }

}

struct TypesOfMoonPhasesView_Previews: PreviewProvider {
    static var previews: some View {
        TypesOfMoonPhasesView()
    }
}
