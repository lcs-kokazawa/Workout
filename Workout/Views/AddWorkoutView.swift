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
    @State var duration = 20.0
    @State var sumosquats = 0
    @State var bulgariansplit = 0
    @State var hipthrust = 0
    @State var deadlift = 0
    @State var lunges = 0
    @State var legcurl = 0
    @State var latpulldown = 0
    @State var benchpress = 0
    @State var reverseflies = 0
    @State var tricepextension = 0
    @State var bicepcurls = 0
    @State var seatedrow = 0
    @State var bentooverrow = 0
    
    var durationAsInteger: Int{
        return Int(duration)
    }
    
    let columns = [GridItem(.flexible(minimum: 50), alignment: .leading),
                   GridItem(.flexible(minimum: 50),alignment: .leading)]
    //MARK: Computed properties
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns: columns) {
                    Group {
                        HStack{
                            Button(action: {
                                sumosquats += 1
                            }, label: {
                                Image(systemName: "figure.cross.training")
                                Text("Sumo Squats")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(sumosquats)")
                        }
                        HStack{
                            Button(action: {
                                bulgariansplit += 1
                            }, label: {
                                Image(systemName: "dumbbell.fill")
                                Text("Bulgarian Split")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(bulgariansplit)")
                        }
                        HStack{
                            Button(action: {
                                hipthrust += 1
                            }, label: {
                                Image(systemName: "dumbbell.fill")
                                Text("Hipthrust")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(hipthrust)")
                        }
                        HStack{
                            Button(action: {
                                deadlift += 1
                            }, label: {
                                Image(systemName: "figure.strengthtraining.traditional")
                                Text("Deadlift")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(deadlift)")
                        }
                        HStack{
                            Button(action: {
                                lunges += 1
                            }, label: {
                                Image(systemName: "figure.strengthtraining.functional")
                                Text("Lunges")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(lunges)")
                        }
                        HStack{
                            Button(action: {
                                legcurl += 1
                            }, label: {
                                Image(systemName: "figure.wrestling")
                                Text("Legcurl")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(legcurl)")
                        }
                        HStack{
                            Button(action: {
                                latpulldown += 1
                            }, label: {
                                Image(systemName: "figure.mixed.cardio")
                                Text("Latpulldown")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.blue)
                            
                            Text("× \(latpulldown)")
                        }
                        HStack{
                            Button(action: {
                                benchpress += 1
                            }, label: {
                                Image(systemName: "figure.strengthtraining.traditional")
                                Text("Benchpress")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.blue)
                            
                            Text("× \(benchpress)")
                        }
                        HStack{
                            Button(action: {
                                reverseflies += 1
                            }, label: {
                                Image(systemName: "dumbbell.fill")
                                Text("Reverseflies")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.blue)
                            
                            Text("× \(reverseflies)")
                        }
                        HStack{
                            Button(action: {
                                seatedrow += 1
                            }, label: {
                                Image(systemName: "figure.rower")
                                Text("Seatedrow")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.blue)
                            
                            Text("× \(seatedrow)")
                        }
                    }
                    Group {
                        HStack{
                            Button(action: {
                                bentooverrow += 1
                            }, label: {
                                Image(systemName: "figure.cross.training")
                                Text("Bentooverrow")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.blue)
                            
                            Text("× \(bentooverrow)")
                        }
                        HStack{
                            Button(action: {
                                tricepextension += 1
                            }, label: {
                                Image(systemName: "figure.cross.training")
                                Text("Tricep Extension")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.orange)
                            
                            Text("× \(tricepextension)")
                        }
                        HStack{
                            Button(action: {
                                bicepcurls += 1
                            }, label: {
                                Image(systemName: "dumbbell.fill")
                                Text("Bicepcurls")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.orange)
                            
                            Text("× \(bicepcurls)")
                        }
                       
                        
                        
                    }
                   
                    
            }
            .padding()
                
                Text("Record Workout Duration")
                    .font(.title)
                    .fontWeight(.bold)
                
                Slider(value: $duration, in: 1...180, step: 1.0)
                .padding()
                Text("Duration: \(durationAsInteger) minutes")
                
            }
            .navigationTitle("Record Workout")
            
          
        }
        
        
    }
        
}

struct AddWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        AddWorkoutView()
        //MAKE the database available to all other view through envirnment
        .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}
