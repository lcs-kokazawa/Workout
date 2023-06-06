//
//  AddWorkoutView.swift
//  Workout
//
//  Created by Kiho Okazawa on 2023-06-05.
//

import SwiftUI
import Blackbird

struct AddWorkoutView: View {
    //MARK: Stored properties
    //Access the conncetion to the database (neededto add a new record)
    @Environment(\.blackbirdDatabase) var db: Blackbird.Database?
    //Holds details for the new movie
    @State var date = ""
    @State var duration = 20
    @State var sumosquats = 0
    @State var bulgariansplit = 0
    //MARK: Computed properties
    var body: some View {
        NavigationView{
            ScrollView {
                VStack {
                    HStack{
                        Button(action: {
                            sumosquats += 1
                        }, label: {
                            Image(systemName: "figure.cross.training")
                            Text("sumosquats")
                        })
                        .buttonStyle(.borderedProminent)
                        .tint(.green)
                        
                        Text("× \(sumosquats)")
                    }
                    HStack{
                        Button(action: {
                            bulgariansplit += 1
                        }, label: {
                            Image(systemName: "figure.cross.training")
                            Text("bulgariansplit")
                        })
                        .buttonStyle(.borderedProminent)
                        .tint(.green)
                        
                        Text("× \(bulgariansplit)")
                    }
            }
            
                
            }
            .navigationTitle("Record Workout")
            
          
        }
        
        
    }
        
}

struct AddWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        AddWorkoutView()
    }
}
