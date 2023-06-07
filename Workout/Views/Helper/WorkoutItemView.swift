//
//  WorkoutItemView.swift
//  Workout
//
//  Created by Kiho Okazawa on 2023-06-07.
//

import SwiftUI

struct WorkoutItemView: View {
    
    //MARK: Stored properties
    let date: String
    let duration: Int
    let sumosquats: Int
    let bulgariansplit: Int
    let hipthrust: Int
    let deadlift: Int
    let lunges: Int
    let legcurl: Int
    let latpulldown: Int
    let benchpress: Int
    let reverseflies: Int
    let tricepextension: Int
    let bicepcurls: Int
    let seatedrow: Int
    let bentoverrow: Int
    
    //MARK: Computed properties
    
    //The user interface
    var body: some View {
        HStack {
            Text(date)
                .font(.title3)
                .bold()
            
            Spacer()
            VStack(alignment: .leading) {
                Group {
                    Text("Sumo Squats × \(sumosquats)")
                    Text("Bulgarian Split ×\(bulgariansplit)")
                    Text("Hipthrust × \(hipthrust)")
                    Text("Deadlift × \(deadlift)")
                    Text("Lunges × \(lunges)")
                    Text("Legcurl ×\(legcurl)")
                    Text("Lat Pulldown × \(latpulldown)")
                    Text("Bench Press × \(benchpress)")
                }
               
                Text("Reverseflies × \(reverseflies)")
                Text("Tricepextension ×\(tricepextension)")
                Text("Bicepcurls × \(bicepcurls)")
                Text("seatedrow × \(seatedrow)")
                Text("Bent-over Row × \(bentoverrow)")
                Text("Legcurl ×\(legcurl)")
                Text("Lat Pulldown × \(latpulldown)")
                Text("Bench Press × \(benchpress)")
                
            }
            Spacer()
            VStack {
                Text("\(duration)")
                    .fontWeight(.heavy)
                    .font(.title3)
                Text("MINUTES")
                    .font(.title3)
                    .fontWeight(.bold)
                
            }
            
           
        }
        .padding()
        .background(
      
      RoundedRectangle(cornerRadius: 20) // Create the shape
                      .foregroundColor(Color.green)) // Make shape green
      .padding()
        
        .padding()
    }
}

struct WorkoutItemView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutItemView(date: "May12", duration: 20, sumosquats: 0, bulgariansplit: 3, hipthrust: 4, deadlift: 3, lunges: 4, legcurl: 0, latpulldown: 0, benchpress: 0, reverseflies: 0, tricepextension: 0, bicepcurls: 0, seatedrow: 0, bentoverrow: 0)
    }
}
