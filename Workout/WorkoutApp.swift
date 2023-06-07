//
//  WorkoutApp.swift
//  Workout
//
//  Created by Kiho Okazawa on 2023-06-05.
//

import Blackbird
import SwiftUI

@main
struct WorkoutApp: App {
    var body: some Scene {
        WindowGroup {
            WorkoutListView()
            //Make the database available to all other view throgh the envirnment
                .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }
}
