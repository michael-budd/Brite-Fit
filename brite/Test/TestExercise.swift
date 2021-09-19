//
//  TestExercise.swift
//  brite
//
//  Created by Michael Budd on 8/20/21.
//

import Foundation

enum MuscleGroup {
    case Chest
    case Back
    case Legs
    case Arms
    case Shoulders
}

func TestData(with group: MuscleGroup) -> Routine {
    switch group {
    case .Chest:
        return ChestRoutine()
    case .Back:
        return BackRoutine()
    case .Legs:
        return LegsRoutine()
    case .Arms:
        return ArmRoutine()
    case .Shoulders:
        return ShoulderRoutine()
    }
}

func LegsRoutine() -> Routine {
    // Legs
    let legExtensions = Exercise(name: "Leg Extension", repCount: 15, setCount: 4)
    let legPress = Exercise(name: "Leg Press", repCount: 15, setCount: 4, modification: "45 Degrees")
    let smithMachineSquats = Exercise(name: "Smith Machine Squats", repCount: 15, setCount: 3)
    let singleLegPress = Exercise(name: "Single Leg Press", repCount: 15, setCount: 3)
    let verticalLegPress = Exercise(name: "Vertical Leg Press", repCount: 15, setCount: 3)
    let lyingLegCurls = Exercise(name: "Lying Leg Curls", repCount: 15, setCount: 4)
    let stiffLeggedDumbbellDeadlifts = Exercise(name: "Stiff Legged Dumbell Deadlift", repCount: 15, setCount: 3)
    let hatchMachineDeadlifts = Exercise(name: "Hatch Machine Deadlifts", repCount: 15, setCount: 3)
    let highLegPress = Exercise(name: "High Leg Press", repCount: 15, setCount: 3)
    let hackSquat = Exercise(name: "Hack Squat", repCount: 10, setCount: 3, modification: "Heavy")
    let seatedLegCurl = Exercise(name: "Seated Leg Curl", repCount: 10, setCount: 4)
    let standingHamstringCurl = Exercise(name: "Standing Hamstring Curl", repCount: 10, setCount: 4)
    let calves = Exercise(name: "Calves", repCount: 100, setCount: 1)
    
    let legDay = Routine(exercises: [legExtensions, legPress, smithMachineSquats, singleLegPress, verticalLegPress, lyingLegCurls, stiffLeggedDumbbellDeadlifts, hatchMachineDeadlifts, highLegPress, hackSquat, seatedLegCurl, standingHamstringCurl, calves])
    
    return legDay
}

func BackRoutine() -> Routine {
    let latPulldown = Exercise(name: "Lat Pulldown", repCount: 15, setCount: 5)
    let ropePullover = Exercise(name: "Rope Pullover", repCount: 15, setCount: 4)
    let lowMachineRow = Exercise(name: "Low Back Machine Row", repCount: 10, setCount: 3, modification: "Super Set")
    let middlemachineRows = Exercise(name: "Middle Back Machine Row", repCount: 10, setCount: 3, modification: "Super Set")
    let closeLatPulldown = Exercise(name: "Close Grip Lat Pulldown", repCount: 10, setCount: 3)
    let singleMachinePulldown = Exercise(name: "Single Arm Machine Lat Pulldown", repCount: 10, setCount: 3)
    let hyperExtension = Exercise(name: "Hyperextension", repCount: 15, setCount: 2, modification: "Slow")
    
    let backDay = Routine(exercises: [latPulldown, ropePullover, lowMachineRow, middlemachineRows,closeLatPulldown, singleMachinePulldown, hyperExtension])
    return backDay
}

func ChestRoutine() -> Routine {
    // Chest
    let pecDeck = Exercise(name: "Pec Deck", repCount: 15, setCount: 4)
    let inclineMachinePress = Exercise(name: "Incline Machine Press", repCount: 10, setCount: 3)
    let inclineDumbbellPress = Exercise(name: "Incline Dumbell Press", repCount: 10, setCount: 3,modification: "Heavy")
    let declineMachinePress = Exercise(name: "Decline Machine Press", repCount: 10, setCount: 3)
    let smithFlatPress = Exercise(name: "Smith Machine - Flat Press", repCount: 1, setCount: 25, modification: "Wide Grip, Drop Set")
    
    let chestDay = Routine(exercises: [pecDeck, inclineMachinePress, inclineDumbbellPress, declineMachinePress, smithFlatPress])
    
    return chestDay
}

func AbsRoutine() -> Routine {
    // Abs
    let legLifts = Exercise(name: "Leg Lifts", repCount: 15, setCount: 4, modification: "Lying")
    let ballCrunches = Exercise(name: "Ball Crunches", repCount: 15, setCount: 4)
    let mountainClimbers = Exercise(name: "Mountain Climbers", repCount: 30, setCount: 3)
    let kneeRaises = Exercise(name: "Knee Raises", repCount: 20, setCount: 3)
    
    let absRout = Routine(exercises: [legLifts, ballCrunches, mountainClimbers, kneeRaises])
    
    return absRout
}

func ShoulderRoutine() -> Routine {
    // Shoulders
    let machinePress = Exercise(name: "Machine Press", repCount: 15, setCount: 3)
    let sideRaises = Exercise(name: "Side Lateral Raise", repCount: 15, setCount: 6)
    let overheadPress = Exercise(name: "Dumbell Overhead Press", repCount: 15, setCount: 4, modification: "Heavy")
    let rearDeltFly = Exercise(name: "Rear Delt Fly", repCount: 15, setCount: 10)
    let seatedPress = Exercise(name: "Seated Press", repCount: 99, setCount: 5, modification: "Failure")
    let arnoldPress = Exercise(name: "Arnold Press", repCount: 20, setCount: 5, modification: "Light Weight")
    
    let shoulderDay = Routine(exercises: [machinePress, sideRaises, overheadPress, rearDeltFly, seatedPress, arnoldPress])
    
    return shoulderDay
}

func ArmRoutine() -> Routine {
    // Arms
    let standingCurl = Exercise(name: "Standing Curls", repCount: 15, setCount: 4, modification: "E-Z Curl Bar")
    let preacherCurl = Exercise(name: "Preacher Curls", repCount: 15, setCount: 3)
    let machineCurls = Exercise(name: "Machine Curls", repCount: 15, setCount: 3)
    let cablePushdowns = Exercise(name: "Cable Pushdowns", repCount: 15, setCount: 4)
    let skullCrushers = Exercise(name: "Skull Crushers", repCount: 15, setCount: 3)
    let machineTricepExtensions = Exercise(name: "Machine Tricep Extension", repCount: 15, setCount: 3, modification: "Giant Super Set")
    
    let armDay = Routine(exercises: [standingCurl, preacherCurl, machineCurls, cablePushdowns, skullCrushers, machineTricepExtensions])
    
    return armDay
}







