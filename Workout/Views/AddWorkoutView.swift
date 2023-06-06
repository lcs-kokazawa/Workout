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
                        HStack{
                            Button(action: {
                                hipthrust += 1
                            }, label: {
                                Image(systemName: "figure.cross.training")
                                Text("hipthrust")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(hipthrust)")
                        }
                        HStack{
                            Button(action: {
                                deadlift += 1
                            }, label: {
                                Image(systemName: "figure.cross.training")
                                Text("deadlift")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(deadlift)")
                        }
                        HStack{
                            Button(action: {
                                lunges += 1
                            }, label: {
                                Image(systemName: "figure.cross.training")
                                Text("lunges")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(lunges)")
                        }
                        HStack{
                            Button(action: {
                                legcurl += 1
                            }, label: {
                                Image(systemName: "figure.cross.training")
                                Text("legcurl")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(legcurl)")
                        }
                        HStack{
                            Button(action: {
                                latpulldown += 1
                            }, label: {
                                Image(systemName: "figure.cross.training")
                                Text("latpulldown")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(latpulldown)")
                        }
                        HStack{
                            Button(action: {
                                benchpress += 1
                            }, label: {
                                Image(systemName: "figure.cross.training")
                                Text("benchpress")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(benchpress)")
                        }
                        HStack{
                            Button(action: {
                                reverseflies += 1
                            }, label: {
                                Image(systemName: "figure.cross.training")
                                Text("reverseflies")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(reverseflies)")
                        }
                        HStack{
                            Button(action: {
                                tricepextension += 1
                            }, label: {
                                Image(systemName: "figure.cross.training")
                                Text("tricepextension")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(tricepextension)")
                        }
                    }
                    Group {
                        HStack{
                            Button(action: {
                                bicepcurls += 1
                            }, label: {
                                Image(systemName: "figure.cross.training")
                                Text("bicepcurls")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(bicepcurls)")
                        }
                        HStack{
                            Button(action: {
                                seatedrow += 1
                            }, label: {
                                Image(systemName: "figure.cross.training")
                                Text("seatedrow")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(seatedrow)")
                        }
                        HStack{
                            Button(action: {
                                bentooverrow += 1
                            }, label: {
                                Image(systemName: "figure.cross.training")
                                Text("bentooverrow")
                            })
                            .buttonStyle(.borderedProminent)
                            .tint(.green)
                            
                            Text("× \(bentooverrow)")
                        }
                        
                    }
                   
                    
            }
                .padding()
                
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
