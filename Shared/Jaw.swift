//
//  Jaw.swift
//  Dentist
//
//  Created by Борис Ларионов on 15.01.2022.
//

import SwiftUI

struct Jaw: Identifiable {
    var id = UUID()
    var jaw: JawEnum
    var image: String
}

var jaws = [
    Jaw(jaw: .mouth1, image: "Month1"),
    Jaw(jaw: .mouth2, image: "Month2"),
    Jaw(jaw: .mouth3, image: "Month3"),
    Jaw(jaw: .mouth4, image: "Month4"),
    Jaw(jaw: .mouth5, image: "Month5")
]

enum JawEnum: String {
    case mouth1
    case mouth2
    case mouth3
    case mouth4
    case mouth5
}

enum NowView: String {
    case homeView
    case denturesReview
}
