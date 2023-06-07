//
//  Workout.swift
//  Workout
//
//  Created by Kiho Okazawa on 2023-06-05.
//

import Blackbird
import Foundation

struct Workout: BlackbirdModel {
    @BlackbirdColumn var id : Int
    @BlackbirdColumn var date : String
    @BlackbirdColumn var duration: Int
    @BlackbirdColumn var sumosquats: Int
    @BlackbirdColumn var bulgariansplit: Int
    @BlackbirdColumn var hipthrust: Int
    @BlackbirdColumn var deadlift: Int
    @BlackbirdColumn var lunges: Int
    @BlackbirdColumn var legcurl: Int
    @BlackbirdColumn var latpulldown: Int
    @BlackbirdColumn var benchpress: Int
    @BlackbirdColumn var reverseflies: Int
    @BlackbirdColumn var tricepextension: Int
    @BlackbirdColumn var bicepcurls: Int
    @BlackbirdColumn var seatedrow: Int
    @BlackbirdColumn var bentoverrow: Int
}
