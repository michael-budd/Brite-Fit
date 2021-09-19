//
//  FoodDiaryView.swift
//  brite
//
//  Created by Michael Budd on 8/17/21.
//

import SwiftUI

struct FoodDiaryView: View {
    var body: some View {
        NavigationView {
            Text("Food Journal View")
                .navigationTitle("Food Diary")
        }

    }
}

struct FoodDiaryView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDiaryView()
    }
}
