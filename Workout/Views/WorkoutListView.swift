//
//  WorkoutListView.swift
//  Workout
//
//  Created by Kiho Okazawa on 2023-06-05.
//

import Blackbird
import SwiftUI

struct WorkoutListView: View {
    
    //MARK: Stored properties
    //Teh list of workout, as read from database
    @BlackbirdLiveModels({ db in
        try await Workout.read(from: db)
    }) var workout
    
    //MARK: Computed properties
    var body: some View {
        NavigationView {
            List {
                WorkoutItemView(date: "June2", duration: 30, sumosquats: 2, bulgariansplit: 3, hipthrust: 3, deadlift: 3, lunges: 3, legcurl: 0, latpulldown: 0, benchpress: 0, reverseflies: 0, tricepextension: 0, bicepcurls: 0, seatedrow: 0, bentoverrow: 0)
                WorkoutItemView(date: "June2", duration: 30, sumosquats: 2, bulgariansplit: 3, hipthrust: 3, deadlift: 3, lunges: 3, legcurl: 0, latpulldown: 0, benchpress: 0, reverseflies: 0, tricepextension: 0, bicepcurls: 0, seatedrow: 0, bentoverrow: 0)
                WorkoutItemView(date: "June2", duration: 30, sumosquats: 2, bulgariansplit: 3, hipthrust: 3, deadlift: 3, lunges: 3, legcurl: 0, latpulldown: 0, benchpress: 0, reverseflies: 0, tricepextension: 0, bicepcurls: 0, seatedrow: 0, bentoverrow: 0)
            }
        }
    }
}

struct WorkoutListView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutListView()
        //Make the database available to all other view through the envirnment
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}
