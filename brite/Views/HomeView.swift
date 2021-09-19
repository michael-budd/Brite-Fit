//
//  HomeView.swift
//  brite
//
//  Created by Michael Budd on 8/15/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("Home View")
                .navigationTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
