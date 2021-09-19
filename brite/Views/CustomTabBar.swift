//
//  CustomTabBar.swift
//  brite
//
//  Created by Michael Budd on 8/3/21.
//

import SwiftUI

struct CustomTabBar: View {
    @State var selectedIndex = 2
    let tabImage = ["chart.pie.fill","text.book.closed.fill","house.fill","heart.circle.fill","person.2.fill"]
    
    var body: some View {
        VStack {
            ZStack {
                switch selectedIndex {
                case 0:
                    FoodDiaryView()
                case 1:
                    WorkoutDiaryView()
                case 2:
                    HomeView()
                case 3:
                    WorkoutRoutineView()
                case 4:
                    TrainerView()
                default:
                    Text("View Not Created")
                }
            }
            Spacer()
            
            HStack {
                ForEach(0..<tabImage.count) { num in
                    Button(action: {
                        selectedIndex = num
                    }, label: {
                        Spacer()
                        if num == selectedIndex {
                            Image(systemName: tabImage[num])
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.blue)
                                .offset(y: -10)
                        } else {
                            Image(systemName: tabImage[num])
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(Color(.label))
                        }
                        Spacer()
                        
                    }) 
                }
            }
            
        }
        
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
