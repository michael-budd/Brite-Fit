//
//  WorkoutRoutineView.swift
//  brite
//
//  Created by Michael Budd on 8/17/21.
//

import SwiftUI

struct WorkoutRoutineView: View {
    let muscleGroups = [MuscleGroup.Chest, MuscleGroup.Back, MuscleGroup.Legs, MuscleGroup.Arms, MuscleGroup.Shoulders]
    let cellTitle = ["Chest", "Back", "Legs", "Arms", "Shoulders"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0..<muscleGroups.count) { num in
                    NavigationLink(destination: MuscleGroupView(title: cellTitle[num], mGroup: muscleGroups[num]), label: {
                        // TODO: Replace text views with card views containing more visuals. Maybe a custom emoji of muscle group and some info about the routine?
                        Text("\(cellTitle[num])") // Match index to new sting index
                            .bold()
                            .frame(width: 280, height: 50, alignment: .center)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding()
                    })
                }
            }
            .navigationTitle("Workouts")
        }
    }
}

struct MuscleGroupView: View {
    var title: String
    var mGroup: MuscleGroup
    
    var body: some View {
        let routine = GetRoutine(muscleGroup: mGroup)
        ScrollView {
            ForEach(0..<routine.exercises.count) { num in
                exerciseCell(exercise: routine.exercises[num])
            }
        }
        .navigationTitle(title)
    }
    
    func GetRoutine(muscleGroup: MuscleGroup) -> Routine {
        return TestData(with: muscleGroup)
    }
}

struct exerciseCell: View {
    var exercise: Exercise
    var body: some View {
        VStack (alignment: .leading) {
            Text("\(exercise.name)")
                .bold()
                .font(.system(.headline, design: .rounded))
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("\(exercise.setCount) x \(exercise.repCount)")
            if exercise.modification != "None" {
                Text("\(exercise.modification)")
            }
            
        }
        .padding(.leading, 24)
        .padding(.top, 16)
    }
}

struct WorkoutRoutineView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutRoutineView()
    }
}
