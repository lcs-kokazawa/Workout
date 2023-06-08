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
    
    @State var showingAddMovieView = false
    
    
    
    //MARK: Computed properties
    var body: some View {
        NavigationView {
            List(workout.results) { currentWorkout in
                WorkoutItemView(date: currentWorkout.date,
                                duration: currentWorkout.duration,
                                sumosquats: currentWorkout.sumosquats,
                                bulgariansplit: currentWorkout.bulgariansplit,
                                hipthrust: currentWorkout.hipthrust,
                                deadlift: currentWorkout.deadlift,
                                lunges: currentWorkout.lunges,
                                legcurl: currentWorkout.legcurl,
                                latpulldown: currentWorkout.latpulldown,
                                benchpress: currentWorkout.benchpress,
                                reverseflies: currentWorkout.reverseflies,
                                tricepextension: currentWorkout.tricepextension,
                                bicepcurls: currentWorkout.bicepcurls,
                                seatedrow: currentWorkout.seatedrow,
                                bentoverrow: currentWorkout.bentoverrow)
               
            }
            .navigationTitle("Workout")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {
                        showingAddMovieView = true
                    }, label: {
                        Image(systemName: "plus")
                    })
                    .sheet(isPresented: $showingAddMovieView) {
                        AddWorkoutView()
                            .presentationDetents([.fraction(1)])
                    }
                }
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
