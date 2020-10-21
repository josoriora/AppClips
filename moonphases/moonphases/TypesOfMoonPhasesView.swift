//
//  TypesOfMoonPhasesView.swift
//  moonphases
//
//  Created by Emergency on 20/10/20.
//

import Foundation

import SwiftUI

struct TypesOfMoonPhasesView: View {
    @State var pushActive = false
    
    var body: some View {
        NavigationView {
            List {
                Text("Moon")
            }
        }
    }

}

struct TypesOfMoonPhasesView_Previews: PreviewProvider {
    static var previews: some View {
        TypesOfMoonPhasesView()
    }
}
